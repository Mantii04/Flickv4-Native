package k0;

import android.content.res.Resources;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class h {
    public static String[] createStringIntArrays(int i2, int i7, String str) {
        String[] strArr = new String[(i7 - i2) + 1];
        for (int i8 = i2; i8 <= i7; i8++) {
            if (str != null) {
                strArr[i8 - i2] = String.format(str, Integer.valueOf(i8));
            } else {
                strArr[i8 - i2] = String.valueOf(i8);
            }
        }
        return strArr;
    }

    public static Calendar getCalendarForLocale(Calendar calendar, Locale locale) {
        if (calendar == null) {
            return Calendar.getInstance(locale);
        }
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance(locale);
        calendar2.setTimeInMillis(timeInMillis);
        return calendar2;
    }

    public static g getDateConstantInstance(Locale locale, Resources resources) {
        return new g(locale);
    }
}
