package com.google.android.datatransport.cct.internal;

import android.util.SparseArray;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v1 com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, still in use, count: 1, list:
  (r1v1 com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype) from 0x0131: INVOKE 
  (r2v11 android.util.SparseArray)
  (1 int)
  (r1v1 com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype)
 VIRTUAL call: android.util.SparseArray.put(int, java.lang.Object):void A[MD:(int, E):void (c)] (LINE:306)
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
public final class NetworkConnectionInfo$MobileSubtype {
    UNKNOWN_MOBILE_SUBTYPE(0),
    /* JADX INFO: Fake field, exist only in values array */
    GPRS(1),
    /* JADX INFO: Fake field, exist only in values array */
    EDGE(2),
    /* JADX INFO: Fake field, exist only in values array */
    UMTS(3),
    /* JADX INFO: Fake field, exist only in values array */
    CDMA(4),
    /* JADX INFO: Fake field, exist only in values array */
    EVDO_0(5),
    /* JADX INFO: Fake field, exist only in values array */
    EVDO_A(6),
    /* JADX INFO: Fake field, exist only in values array */
    RTT(7),
    /* JADX INFO: Fake field, exist only in values array */
    HSDPA(8),
    /* JADX INFO: Fake field, exist only in values array */
    HSUPA(9),
    /* JADX INFO: Fake field, exist only in values array */
    HSPA(10),
    /* JADX INFO: Fake field, exist only in values array */
    IDEN(11),
    /* JADX INFO: Fake field, exist only in values array */
    EVDO_B(12),
    /* JADX INFO: Fake field, exist only in values array */
    LTE_CA(13),
    /* JADX INFO: Fake field, exist only in values array */
    TD_SCDMA(14),
    /* JADX INFO: Fake field, exist only in values array */
    IWLAN(15),
    /* JADX INFO: Fake field, exist only in values array */
    LTE_CA(16),
    /* JADX INFO: Fake field, exist only in values array */
    TD_SCDMA(17),
    /* JADX INFO: Fake field, exist only in values array */
    IWLAN(18),
    /* JADX INFO: Fake field, exist only in values array */
    LTE_CA(19),
    COMBINED(100);


    /* renamed from: j, reason: collision with root package name */
    public static final SparseArray f9486j;

    /* renamed from: b, reason: collision with root package name */
    public final int f9488b;

    static {
        NetworkConnectionInfo$MobileSubtype networkConnectionInfo$MobileSubtype = UNKNOWN_MOBILE_SUBTYPE;
        SparseArray sparseArray = new SparseArray();
        f9486j = sparseArray;
        sparseArray.put(0, networkConnectionInfo$MobileSubtype);
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
        sparseArray.put(18, r2);
        sparseArray.put(19, r6);
    }

    public NetworkConnectionInfo$MobileSubtype(int i2) {
        this.f9488b = i2;
    }

    public static NetworkConnectionInfo$MobileSubtype forNumber(int i2) {
        return (NetworkConnectionInfo$MobileSubtype) f9486j.get(i2);
    }

    public static NetworkConnectionInfo$MobileSubtype valueOf(String str) {
        return (NetworkConnectionInfo$MobileSubtype) Enum.valueOf(NetworkConnectionInfo$MobileSubtype.class, str);
    }

    public static NetworkConnectionInfo$MobileSubtype[] values() {
        return (NetworkConnectionInfo$MobileSubtype[]) f9487m.clone();
    }

    public int getValue() {
        return this.f9488b;
    }
}
