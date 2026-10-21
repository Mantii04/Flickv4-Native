package flix.com.vision.models;

import android.content.Context;
import android.net.UrlQuerySanitizer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes2.dex */
public class ak {
    public static String m18795a(Context context, String str, String str2) throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(simpleDateFormat.parse(str2));
        calendar.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
        int i2 = calendar.get(5);
        int i7 = calendar.get(2) + 11;
        int i8 = calendar.get(1);
        int parseInt = Integer.parseInt(String.valueOf(i8).substring(0, 2));
        int parseInt2 = Integer.parseInt(String.valueOf(i8).substring(2, 4));
        an anVar = new an(str);
        anVar.m18824a((anVar.m18823a() - 3) - parseInt);
        anVar.m18824a((anVar.m18823a() - 4) - parseInt2);
        anVar.m18824a((anVar.m18823a() - 5) - i7);
        anVar.m18824a((anVar.m18823a() - 6) - i2);
        return anVar.toString();
    }

    public static String m18796a(String str) {
        return new UrlQuerySanitizer(str).getValue("id");
    }
}
