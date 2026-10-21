package b;

import T4.k;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.cast.zztc;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.threeten.bp.temporal.TemporalField;

/* loaded from: classes.dex */
public abstract /* synthetic */ class c {
    public static float a(float f3, float f7, float f8, float f9) {
        return ((f3 - f7) * f8) + f9;
    }

    public static int b(int i2, int i7, int i8) {
        return zztc.zzx(i2) + i7 + i8;
    }

    public static int c(int i2, int i7, int i8, int i9) {
        return ((i2 - i7) / i8) + i9;
    }

    public static DisplayMetrics d(Display display) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static ViewPropertyAnimator e(View view, float f3, float f7, float f8, float f9) {
        view.setElevation(f3);
        view.animate().z(f7).start();
        view.animate().translationZ(f8).start();
        view.animate().scaleX(f9).start();
        return view.animate();
    }

    public static JsonArray f(String str, JsonElement jsonElement) {
        return jsonElement.getAsJsonObject().get(str).getAsJsonArray();
    }

    public static ClassCastException g(Iterator it) {
        it.next().getClass();
        return new ClassCastException();
    }

    public static Object h(int i2, ArrayList arrayList) {
        return arrayList.get(arrayList.size() - i2);
    }

    public static String i(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.w());
        return sb.toString();
    }

    public static String j(Class cls, StringBuilder sb, String str) {
        sb.append(cls.getName());
        sb.append(str);
        return sb.toString();
    }

    public static String k(String str, Uri uri) {
        return str + uri;
    }

    public static String l(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static String m(String str, String str2, String str3, String str4, String str5) {
        return str + str2 + str3 + str4 + str5;
    }

    public static String n(String str, TemporalField temporalField) {
        return str + temporalField;
    }

    public static StringBuilder o(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static HashMap p(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, str2);
        return hashMap;
    }

    public static HashMap q(String str, String str2, String str3, String str4) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, str2);
        hashMap.put(str3, str4);
        return hashMap;
    }

    public static void r(RelativeLayout relativeLayout, long j7, float f3) {
        relativeLayout.animate().setDuration(j7).scaleX(f3).start();
    }

    public static void s(RecyclerView recyclerView, int i2) {
        recyclerView.addItemDecoration(new k(i2));
    }

    public static void t(Exception exc, StringBuilder sb, String str) {
        sb.append(exc.getMessage());
        Log.e(str, sb.toString());
    }

    public static void u(ArrayList arrayList, String str, String str2, String str3, String str4) {
        arrayList.add(str);
        arrayList.add(str2);
        arrayList.add(str3);
        arrayList.add(str4);
    }

    public static boolean v(org.jsoup.parser.a aVar, String str) {
        return aVar.currentElement().nodeName().equals(str);
    }

    public static void w(RelativeLayout relativeLayout, long j7, float f3) {
        relativeLayout.animate().setDuration(j7).scaleY(f3).start();
    }
}
