package com.google.android.datatransport.cct.internal;

import android.util.SparseArray;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType, still in use, count: 1, list:
  (r0v0 com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType) from 0x010b: INVOKE 
  (r4v8 android.util.SparseArray)
  (0 int)
  (r0v0 com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType)
 VIRTUAL call: android.util.SparseArray.put(int, java.lang.Object):void A[MD:(int, E):void (c)] (LINE:268)
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:252)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class NetworkConnectionInfo$NetworkType {
    /* JADX INFO: Fake field, exist only in values array */
    MOBILE(0),
    /* JADX INFO: Fake field, exist only in values array */
    WIFI(1),
    /* JADX INFO: Fake field, exist only in values array */
    MOBILE_MMS(2),
    /* JADX INFO: Fake field, exist only in values array */
    MOBILE_SUPL(3),
    /* JADX INFO: Fake field, exist only in values array */
    MOBILE_DUN(4),
    /* JADX INFO: Fake field, exist only in values array */
    MOBILE_HIPRI(5),
    /* JADX INFO: Fake field, exist only in values array */
    WIMAX(6),
    /* JADX INFO: Fake field, exist only in values array */
    BLUETOOTH(7),
    /* JADX INFO: Fake field, exist only in values array */
    DUMMY(8),
    /* JADX INFO: Fake field, exist only in values array */
    ETHERNET(9),
    /* JADX INFO: Fake field, exist only in values array */
    MOBILE_FOTA(10),
    /* JADX INFO: Fake field, exist only in values array */
    MOBILE_IMS(11),
    /* JADX INFO: Fake field, exist only in values array */
    MOBILE_CBS(12),
    /* JADX INFO: Fake field, exist only in values array */
    PROXY(13),
    /* JADX INFO: Fake field, exist only in values array */
    VPN(14),
    /* JADX INFO: Fake field, exist only in values array */
    MOBILE_EMERGENCY(15),
    /* JADX INFO: Fake field, exist only in values array */
    PROXY(16),
    /* JADX INFO: Fake field, exist only in values array */
    VPN(17),
    NONE(-1);


    /* renamed from: f, reason: collision with root package name */
    public static final SparseArray f9490f;

    /* renamed from: b, reason: collision with root package name */
    public final int f9492b;

    static {
        NetworkConnectionInfo$NetworkType networkConnectionInfo$NetworkType = NONE;
        SparseArray sparseArray = new SparseArray();
        f9490f = sparseArray;
        sparseArray.put(0, r0);
        sparseArray.put(1, r1);
        sparseArray.put(2, r3);
        sparseArray.put(3, r5);
        sparseArray.put(4, r7);
        sparseArray.put(5, r9);
        sparseArray.put(6, r11);
        sparseArray.put(7, r13);
        sparseArray.put(8, r15);
        sparseArray.put(9, r14);
        sparseArray.put(10, r12);
        sparseArray.put(11, r10);
        sparseArray.put(12, r8);
        sparseArray.put(13, r6);
        sparseArray.put(14, r4);
        sparseArray.put(15, r2);
        sparseArray.put(16, r6);
        sparseArray.put(17, r4);
        sparseArray.put(-1, networkConnectionInfo$NetworkType);
    }

    public NetworkConnectionInfo$NetworkType(int i2) {
        this.f9492b = i2;
    }

    public static NetworkConnectionInfo$NetworkType forNumber(int i2) {
        return (NetworkConnectionInfo$NetworkType) f9490f.get(i2);
    }

    public static NetworkConnectionInfo$NetworkType valueOf(String str) {
        return (NetworkConnectionInfo$NetworkType) Enum.valueOf(NetworkConnectionInfo$NetworkType.class, str);
    }

    public static NetworkConnectionInfo$NetworkType[] values() {
        return (NetworkConnectionInfo$NetworkType[]) f9491j.clone();
    }

    public int getValue() {
        return this.f9492b;
    }
}
