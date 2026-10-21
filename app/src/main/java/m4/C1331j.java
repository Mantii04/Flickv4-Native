package m4;

import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import com.google.firebase.analytics.FirebaseAnalytics;

/* renamed from: m4.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1331j extends L {

    /* renamed from: b, reason: collision with root package name */
    public static final UriMatcher f18682b;

    /* renamed from: a, reason: collision with root package name */
    public final Context f18683a;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f18682b = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "display_photo/#", 4);
    }

    public C1331j(Context context) {
        this.f18683a = context;
    }

    @Override // m4.L
    public boolean canHandleRequest(I i2) {
        Uri uri = i2.f18620a;
        return FirebaseAnalytics.Param.CONTENT.equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && f18682b.match(i2.f18620a) != -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003c  */
    @Override // m4.L
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public m4.K load(m4.I r5, int r6) throws java.io.IOException {
        /*
            r4 = this;
            android.content.Context r6 = r4.f18683a
            android.content.ContentResolver r6 = r6.getContentResolver()
            android.net.Uri r5 = r5.f18620a
            android.content.UriMatcher r0 = m4.C1331j.f18682b
            int r0 = r0.match(r5)
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L2d
            r3 = 2
            if (r0 == r3) goto L28
            r3 = 3
            if (r0 == r3) goto L35
            r2 = 4
            if (r0 != r2) goto L1c
            goto L28
        L1c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Invalid uri: "
            java.lang.String r5 = b.c.k(r0, r5)
            r6.<init>(r5)
            throw r6
        L28:
            java.io.InputStream r5 = r6.openInputStream(r5)
            goto L39
        L2d:
            android.net.Uri r5 = android.provider.ContactsContract.Contacts.lookupContact(r6, r5)
            if (r5 != 0) goto L35
            r5 = r1
            goto L39
        L35:
            java.io.InputStream r5 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r6, r5, r2)
        L39:
            if (r5 != 0) goto L3c
            return r1
        L3c:
            m4.K r6 = new m4.K
            e6.L r5 = e6.w.source(r5)
            com.squareup.picasso.Picasso$LoadedFrom r0 = com.squareup.picasso.Picasso$LoadedFrom.DISK
            r6.<init>(r5, r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: m4.C1331j.load(m4.I, int):m4.K");
    }
}
