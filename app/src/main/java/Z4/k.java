package Z4;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import flix.com.vision.activities.adult.AdultCategoriesActivity;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final /* synthetic */ class k implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4567b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f4568e;

    public /* synthetic */ k(String str, int i2) {
        this.f4567b = i2;
        this.f4568e = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str = this.f4568e;
        switch (this.f4567b) {
            case 0:
                return ((h6.h) ((h6.h) g6.e.connect(str)).timeout(10000)).get().html();
            case 1:
                return ((h6.h) ((h6.h) g6.e.connect(str)).timeout(10000)).get().html();
            default:
                int i2 = AdultCategoriesActivity.f15309w;
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setReadTimeout(10000);
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            bufferedReader.close();
                            JsonElement parseString = JsonParser.parseString(sb.toString());
                            httpURLConnection.disconnect();
                            return parseString;
                        }
                        sb.append(readLine);
                    }
                } catch (Throwable th) {
                    httpURLConnection.disconnect();
                    throw th;
                }
        }
    }
}
