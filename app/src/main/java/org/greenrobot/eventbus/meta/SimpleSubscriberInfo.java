package org.greenrobot.eventbus.meta;

import org.greenrobot.eventbus.SubscriberMethod;

/* loaded from: classes2.dex */
public class SimpleSubscriberInfo extends AbstractSubscriberInfo {
    private final SubscriberMethodInfo[] methodInfos;

    public SimpleSubscriberInfo(Class cls, boolean z6, SubscriberMethodInfo[] subscriberMethodInfoArr) {
        super(cls, null, z6);
        this.methodInfos = subscriberMethodInfoArr;
    }

    @Override // org.greenrobot.eventbus.meta.SubscriberInfo
    public synchronized SubscriberMethod[] getSubscriberMethods() {
        try {
            try {
                int length = this.methodInfos.length;
                SubscriberMethod[] subscriberMethodArr = new SubscriberMethod[length];
                for (int i2 = 0; i2 < length; i2++) {
                    SubscriberMethodInfo subscriberMethodInfo = this.methodInfos[i2];
                    subscriberMethodArr[i2] = createSubscriberMethod(subscriberMethodInfo.methodName, subscriberMethodInfo.eventType, subscriberMethodInfo.threadMode, subscriberMethodInfo.priority, subscriberMethodInfo.sticky);
                }
                return subscriberMethodArr;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }
}
