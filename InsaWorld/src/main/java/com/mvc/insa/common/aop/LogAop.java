package com.mvc.insa.common.aop;

import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogAop {
	
//	target 앞에 찍고 있다.
	public void before(JoinPoint join) {
//		누구를 호출했는지 알 수 있다.
		Logger logger = LoggerFactory.getLogger(join.getTarget()+"");
		logger.info("------------logger start------------");
		Object args[] = join.getArgs();
		
//		1.target 전 메소드
		if(args != null) {
			logger.info("Method : \t "+ join.getSignature().getName());
			
//			몇개의 아규먼트가 찍혔는지
			for(int i = 0; i < args.length; i++) {
				logger.info(i+"번째 : \t" + args[i]);
			}
		}
		/*
		 * join.getTarget() : 대상 객체
		 * 	   .getArgs() : 대상 파라미터(아규먼트)
		 * 	   .getSignature : 대상 메소드 정보
		 */
	}
	
//	JoinPoint : target에 관해서 무엇을 할꺼면 필요하다. but 출력만 할꺼면 필요없다
//  AOP 사용했던 이유는 익숙해지기 위해서
	public void after(JoinPoint join) {
		Logger logger = LoggerFactory.getLogger(join.getTarget()+"");
	}
	
	public void afterThrowing(JoinPoint join) {
		Logger logger = LoggerFactory.getLogger(join.getTarget()+"");
		logger.info("ERROR : \t " + join.getArgs());
		logger.info("ERROR : \t " + join.toString());
	}
	
}