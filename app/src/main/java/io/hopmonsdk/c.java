package io.hopmonsdk;

import io.hopmonsdk.Hopmn;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class c {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f16792a;

    static {
        int[] iArr = new int[Hopmn.ConsentChoice.values().length];
        f16792a = iArr;
        try {
            iArr[Hopmn.ConsentChoice.AGREE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f16792a[Hopmn.ConsentChoice.DECLINE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f16792a[Hopmn.ConsentChoice.NONE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
