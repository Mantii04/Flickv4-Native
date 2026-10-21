package androidx.media3.common.util;

import P3.AbstractC0226a;
import android.net.Uri;
import android.text.TextUtils;
import com.fasterxml.jackson.core.JsonPointer;
import com.google.firebase.sessions.settings.RemoteSettings;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public final class UriUtil {
    private static final int FRAGMENT = 3;
    private static final int INDEX_COUNT = 4;
    private static final int PATH = 1;
    private static final int QUERY = 2;
    private static final int SCHEME_COLON = 0;

    private UriUtil() {
    }

    @UnstableApi
    public static String getRelativePath(Uri uri, Uri uri2) {
        if (uri.isOpaque() || uri2.isOpaque()) {
            return uri2.toString();
        }
        String scheme = uri.getScheme();
        String scheme2 = uri2.getScheme();
        if (scheme != null ? !(scheme2 == null || !AbstractC0226a.equalsIgnoreCase(scheme, scheme2)) : scheme2 == null) {
            if (Objects.equals(uri.getAuthority(), uri2.getAuthority())) {
                List<String> pathSegments = uri.getPathSegments();
                List<String> pathSegments2 = uri2.getPathSegments();
                int min = Math.min(pathSegments.size(), pathSegments2.size());
                int i2 = 0;
                for (int i7 = 0; i7 < min && pathSegments.get(i7).equals(pathSegments2.get(i7)); i7++) {
                    i2++;
                }
                StringBuilder sb = new StringBuilder();
                for (int i8 = i2; i8 < pathSegments.size(); i8++) {
                    sb.append("../");
                }
                while (i2 < pathSegments2.size()) {
                    sb.append(pathSegments2.get(i2));
                    if (i2 < pathSegments2.size() - 1) {
                        sb.append(RemoteSettings.FORWARD_SLASH_STRING);
                    }
                    i2++;
                }
                return sb.toString();
            }
        }
        return uri2.toString();
    }

    private static int[] getUriIndices(String str) {
        int i2;
        int[] iArr = new int[4];
        if (TextUtils.isEmpty(str)) {
            iArr[0] = -1;
            return iArr;
        }
        int length = str.length();
        int indexOf = str.indexOf(35);
        if (indexOf != -1) {
            length = indexOf;
        }
        int indexOf2 = str.indexOf(63);
        if (indexOf2 == -1 || indexOf2 > length) {
            indexOf2 = length;
        }
        int indexOf3 = str.indexOf(47);
        if (indexOf3 == -1 || indexOf3 > indexOf2) {
            indexOf3 = indexOf2;
        }
        int indexOf4 = str.indexOf(58);
        if (indexOf4 > indexOf3) {
            indexOf4 = -1;
        }
        int i7 = indexOf4 + 2;
        if (i7 < indexOf2 && str.charAt(indexOf4 + 1) == '/' && str.charAt(i7) == '/') {
            i2 = str.indexOf(47, indexOf4 + 3);
            if (i2 == -1 || i2 > indexOf2) {
                i2 = indexOf2;
            }
        } else {
            i2 = indexOf4 + 1;
        }
        iArr[0] = indexOf4;
        iArr[1] = i2;
        iArr[2] = indexOf2;
        iArr[3] = length;
        return iArr;
    }

    public static boolean isAbsolute(String str) {
        return (str == null || getUriIndices(str)[0] == -1) ? false : true;
    }

    private static String removeDotSegments(StringBuilder sb, int i2, int i7) {
        int i8;
        int i9;
        if (i2 >= i7) {
            return sb.toString();
        }
        if (sb.charAt(i2) == '/') {
            i2++;
        }
        int i10 = i2;
        int i11 = i10;
        while (i10 <= i7) {
            if (i10 == i7) {
                i8 = i10;
            } else if (sb.charAt(i10) == '/') {
                i8 = i10 + 1;
            } else {
                i10++;
            }
            int i12 = i11 + 1;
            if (i10 == i12 && sb.charAt(i11) == '.') {
                sb.delete(i11, i8);
                i7 -= i8 - i11;
            } else {
                if (i10 == i11 + 2 && sb.charAt(i11) == '.' && sb.charAt(i12) == '.') {
                    i9 = sb.lastIndexOf(RemoteSettings.FORWARD_SLASH_STRING, i11 - 2) + 1;
                    int i13 = i9 > i2 ? i9 : i2;
                    sb.delete(i13, i8);
                    i7 -= i8 - i13;
                } else {
                    i9 = i10 + 1;
                }
                i11 = i9;
            }
            i10 = i11;
        }
        return sb.toString();
    }

    public static Uri removeQueryParameter(Uri uri, String str) {
        Uri.Builder buildUpon = uri.buildUpon();
        buildUpon.clearQuery();
        for (String str2 : uri.getQueryParameterNames()) {
            if (!str2.equals(str)) {
                Iterator<String> it = uri.getQueryParameters(str2).iterator();
                while (it.hasNext()) {
                    buildUpon.appendQueryParameter(str2, it.next());
                }
            }
        }
        return buildUpon.build();
    }

    public static String resolve(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        int[] uriIndices = getUriIndices(str2);
        if (uriIndices[0] != -1) {
            sb.append(str2);
            removeDotSegments(sb, uriIndices[1], uriIndices[2]);
            return sb.toString();
        }
        int[] uriIndices2 = getUriIndices(str);
        if (uriIndices[3] == 0) {
            sb.append((CharSequence) str, 0, uriIndices2[3]);
            sb.append(str2);
            return sb.toString();
        }
        if (uriIndices[2] == 0) {
            sb.append((CharSequence) str, 0, uriIndices2[2]);
            sb.append(str2);
            return sb.toString();
        }
        int i2 = uriIndices[1];
        if (i2 != 0) {
            int i7 = uriIndices2[0] + 1;
            sb.append((CharSequence) str, 0, i7);
            sb.append(str2);
            return removeDotSegments(sb, uriIndices[1] + i7, i7 + uriIndices[2]);
        }
        if (str2.charAt(i2) == '/') {
            sb.append((CharSequence) str, 0, uriIndices2[1]);
            sb.append(str2);
            int i8 = uriIndices2[1];
            return removeDotSegments(sb, i8, uriIndices[2] + i8);
        }
        int i9 = uriIndices2[0] + 2;
        int i10 = uriIndices2[1];
        if (i9 >= i10 || i10 != uriIndices2[2]) {
            int lastIndexOf = str.lastIndexOf(47, uriIndices2[2] - 1);
            int i11 = lastIndexOf == -1 ? uriIndices2[1] : lastIndexOf + 1;
            sb.append((CharSequence) str, 0, i11);
            sb.append(str2);
            return removeDotSegments(sb, uriIndices2[1], i11 + uriIndices[2]);
        }
        sb.append((CharSequence) str, 0, i10);
        sb.append(JsonPointer.SEPARATOR);
        sb.append(str2);
        int i12 = uriIndices2[1];
        return removeDotSegments(sb, i12, uriIndices[2] + i12 + 1);
    }

    public static Uri resolveToUri(String str, String str2) {
        return Uri.parse(resolve(str, str2));
    }
}
