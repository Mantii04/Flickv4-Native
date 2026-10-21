package com.squareup.picasso;

import android.net.Uri;
import com.google.firebase.analytics.FirebaseAnalytics;
import m4.C1332k;
import m4.I;

/* loaded from: classes2.dex */
public final class c extends C1332k {

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f13438b = {"orientation"};

    @Override // m4.C1332k, m4.L
    public boolean canHandleRequest(I i2) {
        Uri uri = i2.f18620a;
        return FirebaseAnalytics.Param.CONTENT.equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x003d, code lost:
    
        if (r1 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x002c, code lost:
    
        if (r1 != null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002e, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0031, code lost:
    
        r9 = 0;
     */
    @Override // m4.C1332k, m4.L
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public m4.K load(m4.I r22, int r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.c.load(m4.I, int):m4.K");
    }
}
