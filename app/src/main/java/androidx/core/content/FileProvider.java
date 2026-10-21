package androidx.core.content;

import A.h;
import A.i;
import A.j;
import A.k;
import L.c;
import android.annotation.SuppressLint;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.google.firebase.sessions.settings.RemoteSettings;
import cz.msebera.android.httpclient.cookie.ClientCookie;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class FileProvider extends ContentProvider {

    /* renamed from: m, reason: collision with root package name */
    public static final String[] f5542m = {"_display_name", "_size"};

    /* renamed from: n, reason: collision with root package name */
    public static final File f5543n = new File(RemoteSettings.FORWARD_SLASH_STRING);

    /* renamed from: p, reason: collision with root package name */
    public static final HashMap f5544p = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final Object f5545b;

    /* renamed from: e, reason: collision with root package name */
    public String f5546e;

    /* renamed from: f, reason: collision with root package name */
    public k f5547f;

    /* renamed from: j, reason: collision with root package name */
    public final int f5548j;

    public FileProvider() {
        this(0);
    }

    public static String a(String str) {
        return (str.length() <= 0 || str.charAt(str.length() - 1) != '/') ? str : i.d(1, 0, str);
    }

    public static k c(Context context, String str, int i2) {
        k kVar;
        HashMap hashMap = f5544p;
        synchronized (hashMap) {
            try {
                kVar = (k) hashMap.get(str);
                if (kVar == null) {
                    try {
                        try {
                            kVar = d(context, str, i2);
                            hashMap.put(str, kVar);
                        } catch (IOException e3) {
                            throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e3);
                        }
                    } catch (XmlPullParserException e7) {
                        throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e7);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return kVar;
    }

    public static k d(Context context, String str, int i2) {
        k kVar = new k(str);
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
        if (resolveContentProvider == null) {
            throw new IllegalArgumentException(i.k("Couldn't find meta-data for provider with authority ", str));
        }
        if (resolveContentProvider.metaData == null && i2 != 0) {
            Bundle bundle = new Bundle(1);
            resolveContentProvider.metaData = bundle;
            bundle.putInt("android.support.FILE_PROVIDER_PATHS", i2);
        }
        XmlResourceParser loadXmlMetaData = resolveContentProvider.loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
        if (loadXmlMetaData == null) {
            throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
        }
        while (true) {
            int next = loadXmlMetaData.next();
            if (next == 1) {
                return kVar;
            }
            if (next == 2) {
                String name = loadXmlMetaData.getName();
                File file = null;
                String attributeValue = loadXmlMetaData.getAttributeValue(null, "name");
                String attributeValue2 = loadXmlMetaData.getAttributeValue(null, ClientCookie.PATH_ATTR);
                if ("root-path".equals(name)) {
                    file = f5543n;
                } else if ("files-path".equals(name)) {
                    file = context.getFilesDir();
                } else if ("cache-path".equals(name)) {
                    file = context.getCacheDir();
                } else if ("external-path".equals(name)) {
                    file = Environment.getExternalStorageDirectory();
                } else if ("external-files-path".equals(name)) {
                    File[] externalFilesDirs = h.getExternalFilesDirs(context, null);
                    if (externalFilesDirs.length > 0) {
                        file = externalFilesDirs[0];
                    }
                } else if ("external-cache-path".equals(name)) {
                    File[] externalCacheDirs = h.getExternalCacheDirs(context);
                    if (externalCacheDirs.length > 0) {
                        file = externalCacheDirs[0];
                    }
                } else if ("external-media-path".equals(name)) {
                    File[] a7 = j.a(context);
                    if (a7.length > 0) {
                        file = a7[0];
                    }
                }
                if (file == null) {
                    continue;
                } else {
                    String str2 = new String[]{attributeValue2}[0];
                    if (str2 != null) {
                        file = new File(file, str2);
                    }
                    if (TextUtils.isEmpty(attributeValue)) {
                        throw new IllegalArgumentException("Name must not be empty");
                    }
                    try {
                        kVar.f1b.put(attributeValue, file.getCanonicalFile());
                    } catch (IOException e3) {
                        throw new IllegalArgumentException("Failed to resolve canonical path for " + file, e3);
                    }
                }
            }
        }
    }

    public static Uri getUriForFile(Context context, String str, File file) {
        return c(context, str, 0).getUriForFile(file);
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        }
        String str = providerInfo.authority.split(";")[0];
        synchronized (this.f5545b) {
            this.f5546e = str;
        }
        HashMap hashMap = f5544p;
        synchronized (hashMap) {
            hashMap.remove(str);
        }
    }

    public final k b() {
        k kVar;
        synchronized (this.f5545b) {
            try {
                c.requireNonNull(this.f5546e, "mAuthority is null. Did you override attachInfo and did not call super.attachInfo()?");
                if (this.f5547f == null) {
                    this.f5547f = c(getContext(), this.f5546e, this.f5548j);
                }
                kVar = this.f5547f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return kVar;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return b().getFileForUri(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File fileForUri = b().getFileForUri(uri);
        int lastIndexOf = fileForUri.getName().lastIndexOf(46);
        if (lastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileForUri.getName().substring(lastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public String getTypeAnonymous(Uri uri) {
        return "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    @SuppressLint({"UnknownNullness"})
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        int i2;
        File fileForUri = b().getFileForUri(uri);
        if ("r".equals(str)) {
            i2 = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i2 = 738197504;
        } else if ("wa".equals(str)) {
            i2 = 704643072;
        } else if ("rw".equals(str)) {
            i2 = 939524096;
        } else {
            if (!"rwt".equals(str)) {
                throw new IllegalArgumentException(i.k("Invalid mode: ", str));
            }
            i2 = 1006632960;
        }
        return ParcelFileDescriptor.open(fileForUri, i2);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i2;
        File fileForUri = b().getFileForUri(uri);
        String queryParameter = uri.getQueryParameter("displayName");
        if (strArr == null) {
            strArr = f5542m;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i7 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i7] = "_display_name";
                i2 = i7 + 1;
                objArr[i7] = queryParameter == null ? fileForUri.getName() : queryParameter;
            } else if ("_size".equals(str3)) {
                strArr3[i7] = "_size";
                i2 = i7 + 1;
                objArr[i7] = Long.valueOf(fileForUri.length());
            }
            i7 = i2;
        }
        String[] strArr4 = new String[i7];
        System.arraycopy(strArr3, 0, strArr4, 0, i7);
        Object[] objArr2 = new Object[i7];
        System.arraycopy(objArr, 0, objArr2, 0, i7);
        MatrixCursor matrixCursor = new MatrixCursor(strArr4, 1);
        matrixCursor.addRow(objArr2);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }

    public FileProvider(int i2) {
        this.f5545b = new Object();
        this.f5548j = i2;
    }
}
