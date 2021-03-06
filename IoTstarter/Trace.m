/*******************************************************************************
 * Copyright (c) 2014 IBM Corp.
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * and Eclipse Distribution License v1.0 which accompany this distribution.
 *
 * The Eclipse Public License is available at
 *   http://www.eclipse.org/legal/epl-v10.html
 * and the Eclipse Distribution License is available at
 *   http://www.eclipse.org/org/documents/edl-v10.php.
 *
 * Contributors:
 *    Mike Robertson
 *    Bryan Boyd
 *******************************************************************************/

#import "Trace.h"

@implementation Trace

@synthesize traceLevel;
- (Trace *)initWithTraceLevel:(TraceLevel)level
{
    self = [super init];
    traceLevel = level;
    return self;
}

/** Emit a trace message at the TraceLevelDebug level.
 *  @param message A string value of the trace message
 */
- (void)traceDebug: (NSString*)message
{
    if (self.traceLevel <= TraceLevelDebug)
    {
        NSLog(@"[DEBUG]: %@", message);
    }
}

/** Emit a trace message at the TraceLevelLog level.
 *  @param message A string value of the trace message
 */
- (void)traceLog:   (NSString*)message
{
    if (self.traceLevel <= TraceLevelLog)
    {
        NSLog(@"[LOG]: %@", message);
    }
}

/** Emit a trace message at the TraceLevelInfo level.
 *  @param message A string value of the trace message
 */
- (void)traceInfo:  (NSString*)message
{
    if (self.traceLevel <= TraceLevelInfo)
    {
        NSLog(@"[INFO]: %@", message);
    }
}

/** Emit a trace message at the TraceLevelWarn level.
 *  @param message A string value of the trace message
 */
- (void)traceWarn:  (NSString*)message
{
    if (self.traceLevel <= TraceLevelWarning)
    {
        NSLog(@"[WARN]: %@", message);
    }
}

/** Emit a trace message at the TraceLevelError level.
 *  @param message A string value of the trace message
 */
- (void)traceError: (NSString*)message
{
    if (self.traceLevel <= TraceLevelError)
    {
        NSLog(@"[ERROR]: %@", message);
    }
}

@end
