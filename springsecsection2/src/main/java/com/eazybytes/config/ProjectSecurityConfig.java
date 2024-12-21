package com.eazybytes.config;

import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

import static org.springframework.security.config.Customizer.withDefaults;

@Configuration
public class ProjectSecurityConfig {

    @Bean
    SecurityFilterChain defaultSecurityFilterChain(HttpSecurity http) throws Exception {
        /**
         * Below is the custom security configurations
         */

        http.authorizeHttpRequests((requests) -> requests
                        .requestMatchers("/myAccount","/myBalance","/myCards","/myLoans").authenticated()
                        .requestMatchers("/contact", "/notices").permitAll());
        http.formLogin(withDefaults());
        http.httpBasic(withDefaults());
        return http.build();

        /**
         * configurations to deny all the request
         */

//        http.authorizeHttpRequests((requests) -> requests.anyRequest().denyAll())
//                .formLogin(withDefaults())
//                .httpBasic(withDefaults());
//        return http.build();

        /**
         * configurations to permit all the request
         */

//        http.authorizeHttpRequests((requests) -> requests.anyRequest().permitAll())
//                .formLogin(withDefaults())
//                .httpBasic(withDefaults());
//        return http.build();

    }
}
