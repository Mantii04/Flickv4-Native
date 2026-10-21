package androidx.activity.result;

import d.AbstractC0771b;
import java.util.HashMap;
import z.AbstractC1960f;

/* loaded from: classes.dex */
public final class e extends d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4903a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC0771b f4904b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityResultRegistry f4905c;

    public e(ActivityResultRegistry activityResultRegistry, String str, AbstractC0771b abstractC0771b) {
        this.f4905c = activityResultRegistry;
        this.f4903a = str;
        this.f4904b = abstractC0771b;
    }

    @Override // androidx.activity.result.d
    public void launch(Object obj, AbstractC1960f abstractC1960f) {
        ActivityResultRegistry activityResultRegistry = this.f4905c;
        HashMap hashMap = activityResultRegistry.f4891b;
        String str = this.f4903a;
        Integer num = (Integer) hashMap.get(str);
        AbstractC0771b abstractC0771b = this.f4904b;
        if (num != null) {
            activityResultRegistry.f4893d.add(str);
            try {
                activityResultRegistry.onLaunch(num.intValue(), abstractC0771b, obj, abstractC1960f);
                return;
            } catch (Exception e3) {
                activityResultRegistry.f4893d.remove(str);
                throw e3;
            }
        }
        throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + abstractC0771b + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
    }

    @Override // androidx.activity.result.d
    public void unregister() {
        this.f4905c.b(this.f4903a);
    }
}
