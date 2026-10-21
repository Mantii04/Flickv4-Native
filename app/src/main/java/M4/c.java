package M4;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public abstract class c {
    public static String getDurationString(long j7, boolean z6) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long hours = timeUnit.toHours(j7);
        long minutes = timeUnit.toMinutes(j7);
        long seconds = timeUnit.toSeconds(j7);
        if (hours > 0) {
            return String.format(Locale.getDefault(), "%s%02d:%02d:%02d", z6 ? "-" : "", Long.valueOf(hours), Long.valueOf(minutes - TimeUnit.HOURS.toMinutes(hours)), Long.valueOf(seconds - TimeUnit.MINUTES.toSeconds(minutes)));
        }
        return String.format(Locale.getDefault(), "%s%02d:%02d", z6 ? "-" : "", Long.valueOf(minutes), Long.valueOf(seconds - TimeUnit.MINUTES.toSeconds(minutes)));
    }

    public static int getScreenWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static Drawable resolveDrawable(Context context, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i2});
        try {
            return obtainStyledAttributes.getDrawable(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
