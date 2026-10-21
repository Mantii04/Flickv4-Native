package C3;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;

/* loaded from: classes2.dex */
public abstract class c {
    public static TypedValue resolve(Context context, int i2) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i2, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean resolveBoolean(Context context, int i2, boolean z6) {
        TypedValue resolve = resolve(context, i2);
        return (resolve == null || resolve.type != 18) ? z6 : resolve.data != 0;
    }

    public static int resolveInteger(Context context, int i2, int i7) {
        TypedValue resolve = resolve(context, i2);
        return (resolve == null || resolve.type != 16) ? i7 : resolve.data;
    }

    public static int resolveOrThrow(Context context, int i2, String str) {
        return resolveTypedValueOrThrow(context, i2, str).data;
    }

    public static TypedValue resolveTypedValueOrThrow(View view, int i2) {
        return resolveTypedValueOrThrow(view.getContext(), i2, view.getClass().getCanonicalName());
    }

    public static TypedValue resolveTypedValueOrThrow(Context context, int i2, String str) {
        TypedValue resolve = resolve(context, i2);
        if (resolve != null) {
            return resolve;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i2)));
    }
}
