package J;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import com.google.firebase.analytics.FirebaseAnalytics;
import cz.msebera.android.httpclient.HttpStatus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final c f1399a = new c(0);

    public static p a(Context context, CancellationSignal cancellationSignal, i iVar) {
        Cursor cursor;
        ArrayList arrayList;
        Uri withAppendedId;
        PackageManager packageManager = context.getPackageManager();
        Resources resources = context.getResources();
        String providerAuthority = iVar.getProviderAuthority();
        int i2 = 0;
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(providerAuthority, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException(A.i.k("No package found for authority: ", providerAuthority));
        }
        if (!resolveContentProvider.packageName.equals(iVar.getProviderPackage())) {
            StringBuilder t6 = A.i.t("Found content provider ", providerAuthority, ", but package was not ");
            t6.append(iVar.getProviderPackage());
            throw new PackageManager.NameNotFoundException(t6.toString());
        }
        Signature[] signatureArr = packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures;
        ArrayList arrayList2 = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList2.add(signature.toByteArray());
        }
        c cVar = f1399a;
        Collections.sort(arrayList2, cVar);
        List<List<byte[]>> certificates = iVar.getCertificates() != null ? iVar.getCertificates() : C.j.readCerts(resources, iVar.getCertificatesArrayResId());
        int i7 = 0;
        loop1: while (true) {
            cursor = null;
            if (i7 >= certificates.size()) {
                resolveContentProvider = null;
                break;
            }
            ArrayList arrayList3 = new ArrayList(certificates.get(i7));
            Collections.sort(arrayList3, cVar);
            if (arrayList2.size() == arrayList3.size()) {
                for (int i8 = 0; i8 < arrayList2.size(); i8++) {
                    if (!Arrays.equals((byte[]) arrayList2.get(i8), (byte[]) arrayList3.get(i8))) {
                        break;
                    }
                }
                break loop1;
            }
            i7++;
        }
        if (resolveContentProvider == null) {
            return new p(1, null);
        }
        String str = resolveContentProvider.authority;
        ArrayList arrayList4 = new ArrayList();
        Uri build = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(str).build();
        Uri build2 = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(str).appendPath("file").build();
        e a7 = d.a(context, build);
        try {
            cursor = a7.query(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{iVar.getQuery()}, null, cancellationSignal);
            if (cursor != null && cursor.getCount() > 0) {
                int columnIndex = cursor.getColumnIndex("result_code");
                ArrayList arrayList5 = new ArrayList();
                int columnIndex2 = cursor.getColumnIndex("_id");
                int columnIndex3 = cursor.getColumnIndex("file_id");
                int columnIndex4 = cursor.getColumnIndex("font_ttc_index");
                int columnIndex5 = cursor.getColumnIndex("font_weight");
                int columnIndex6 = cursor.getColumnIndex("font_italic");
                while (cursor.moveToNext()) {
                    int i9 = columnIndex != -1 ? cursor.getInt(columnIndex) : i2;
                    int i10 = columnIndex4 != -1 ? cursor.getInt(columnIndex4) : i2;
                    if (columnIndex3 == -1) {
                        arrayList = arrayList5;
                        withAppendedId = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                    } else {
                        arrayList = arrayList5;
                        withAppendedId = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                    }
                    Uri uri = withAppendedId;
                    ArrayList arrayList6 = arrayList;
                    arrayList6.add(new q(uri, i10, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : HttpStatus.SC_BAD_REQUEST, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i9));
                    arrayList5 = arrayList6;
                    i2 = 0;
                }
                arrayList4 = arrayList5;
            }
            if (cursor != null) {
                cursor.close();
            }
            a7.close();
            return new p(0, (q[]) arrayList4.toArray(new q[0]));
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            a7.close();
            throw th;
        }
    }
}
