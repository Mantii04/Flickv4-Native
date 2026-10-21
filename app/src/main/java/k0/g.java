package k0;

import java.text.DateFormatSymbols;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final Locale f17246a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f17247b;

    public g(Locale locale) {
        this.f17246a = locale;
        this.f17247b = DateFormatSymbols.getInstance(locale).getShortMonths();
        Calendar calendar = Calendar.getInstance(locale);
        h.createStringIntArrays(calendar.getMinimum(5), calendar.getMaximum(5), "%02d");
    }
}
