package com.github.db;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.jasig.cas.authentication.principal.DefaultPrincipalAttributesRepository;
import org.jasig.cas.services.DefaultRegisteredServiceAccessStrategy;
import org.jasig.cas.services.DefaultRegisteredServiceUsernameProvider;
import org.jasig.cas.services.LogoutType;
import org.jasig.cas.services.RefuseRegisteredServiceProxyPolicy;
import org.jasig.cas.services.RegexRegisteredService;
import org.jasig.cas.services.ReturnAllowedAttributeReleasePolicy;
import org.jasig.cas.services.ServiceRegistryDao;

/**
 * 
 * @author sdcuike
 *
 * @time 2015年12月3日 上午11:49:23
 */
// @Component
public class RegisteredServiceTest {

    @Resource
    private ServiceRegistryDao serviceRegistryDao;

    @PostConstruct
    public void init() {
        RegexRegisteredService registeredService = new RegexRegisteredService();
        registeredService.setServiceId("^https://localhost:8443/cas-services.*");
        registeredService.setDescription("Services Management Web Application");
        registeredService.setName("Services Management Web Application");
        registeredService.setProxyPolicy(new RefuseRegisteredServiceProxyPolicy());
        registeredService.setEvaluationOrder(2);
        registeredService.setUsernameAttributeProvider(new DefaultRegisteredServiceUsernameProvider());
        registeredService.setLogoutType(LogoutType.BACK_CHANNEL);

        ReturnAllowedAttributeReleasePolicy policy = new ReturnAllowedAttributeReleasePolicy();
        policy.setPrincipalAttributesRepository(new DefaultPrincipalAttributesRepository());
        policy.setAuthorizedToReleaseCredentialPassword(false);
        policy.setAuthorizedToReleaseProxyGrantingTicket(false);

        registeredService.setAttributeReleasePolicy(policy);
        DefaultRegisteredServiceAccessStrategy accessStrategy = new DefaultRegisteredServiceAccessStrategy();
        accessStrategy.setEnabled(true);
        accessStrategy.setSsoEnabled(true);
        registeredService.setAccessStrategy(accessStrategy);
        serviceRegistryDao.save(registeredService);
    }
}
