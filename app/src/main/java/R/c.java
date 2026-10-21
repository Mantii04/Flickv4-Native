package R;

import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f2998a = new String[0];

    public static void a(EditorInfo editorInfo, CharSequence charSequence, int i2, int i7) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i2);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i7);
    }

    public static String[] getContentMimeTypes(EditorInfo editorInfo) {
        String[] strArr;
        int i2 = Build.VERSION.SDK_INT;
        String[] strArr2 = f2998a;
        if (i2 >= 25) {
            strArr = editorInfo.contentMimeTypes;
            if (strArr != null) {
                return strArr;
            }
        } else {
            Bundle bundle = editorInfo.extras;
            if (bundle != null) {
                String[] stringArray = bundle.getStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                if (stringArray == null) {
                    stringArray = editorInfo.extras.getStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                }
                if (stringArray != null) {
                    return stringArray;
                }
            }
        }
        return strArr2;
    }

    public static void setContentMimeTypes(EditorInfo editorInfo, String[] strArr) {
        if (Build.VERSION.SDK_INT >= 25) {
            editorInfo.contentMimeTypes = strArr;
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArr);
        editorInfo.extras.putStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArr);
    }

    public static void setInitialSurroundingSubText(EditorInfo editorInfo, CharSequence charSequence, int i2) {
        L.h.checkNotNull(charSequence);
        if (Build.VERSION.SDK_INT >= 30) {
            b.a(editorInfo, charSequence, i2);
            return;
        }
        int i7 = editorInfo.initialSelStart;
        int i8 = editorInfo.initialSelEnd;
        int i9 = i7 > i8 ? i8 - i2 : i7 - i2;
        int i10 = i7 > i8 ? i7 - i2 : i8 - i2;
        int length = charSequence.length();
        if (i2 < 0 || i9 < 0 || i10 > length) {
            a(editorInfo, null, 0, 0);
            return;
        }
        int i11 = editorInfo.inputType & 4095;
        if (i11 == 129 || i11 == 225 || i11 == 18) {
            a(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            a(editorInfo, charSequence, i9, i10);
            return;
        }
        int i12 = i10 - i9;
        int i13 = i12 > 1024 ? 0 : i12;
        int i14 = 2048 - i13;
        int min = Math.min(charSequence.length() - i10, i14 - Math.min(i9, (int) (i14 * 0.8d)));
        int min2 = Math.min(i9, i14 - min);
        int i15 = i9 - min2;
        if (Character.isLowSurrogate(charSequence.charAt(i15))) {
            i15++;
            min2--;
        }
        if (Character.isHighSurrogate(charSequence.charAt((i10 + min) - 1))) {
            min--;
        }
        int i16 = min2 + i13;
        a(editorInfo, i13 != i12 ? TextUtils.concat(charSequence.subSequence(i15, i15 + min2), charSequence.subSequence(i10, min + i10)) : charSequence.subSequence(i15, i16 + min + i15), min2, i16);
    }

    public static void setInitialSurroundingText(EditorInfo editorInfo, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            b.a(editorInfo, charSequence, 0);
        } else {
            setInitialSurroundingSubText(editorInfo, charSequence, 0);
        }
    }
}
