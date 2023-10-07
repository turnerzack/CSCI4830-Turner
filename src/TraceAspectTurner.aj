
public aspect TraceAspectTurner {
	pointcut classToTrace(): within(ComponentApp) || within(DataApp) || within(ServiceApp);
	pointcut methodToTrace(): classToTrace() && execution(String getName());
	
	before(): methodToTrace()
	{ 
		System.out.println("[BGN] " + 
				thisJoinPointStaticPart.getSignature() + 
				", " +
				thisJoinPointStaticPart.getSourceLocation().getLine());
		System.out.println("[END] " +
				thisJoinPointStaticPart.getSourceLocation().getFileName());
		
	}
}
