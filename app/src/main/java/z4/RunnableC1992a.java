package z4;

import flix.com.vision.activities.adult.AdultCategoriesActivity;

/* renamed from: z4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC1992a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21437b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AdultCategoriesActivity f21438e;

    public /* synthetic */ RunnableC1992a(AdultCategoriesActivity adultCategoriesActivity, int i2) {
        this.f21437b = i2;
        this.f21438e = adultCategoriesActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f21437b) {
            case 0:
                this.f21438e.f15321u = false;
                break;
            default:
                this.f21438e.f15319s.requestFocus();
                break;
        }
    }
}
