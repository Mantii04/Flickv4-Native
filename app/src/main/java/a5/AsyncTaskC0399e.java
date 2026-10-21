package a5;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import flix.com.vision.App;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import h5.AbstractC1000n;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: a5.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class AsyncTaskC0399e extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4772a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f4773b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0402h f4774c;

    public AsyncTaskC0399e(C0402h c0402h, String str, ArrayList arrayList) {
        this.f4774c = c0402h;
        this.f4772a = str;
        this.f4773b = arrayList;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        Iterator<org.jsoup.nodes.b> it;
        String str;
        C0402h c0402h = this.f4774c;
        try {
            j6.h hVar = ((h6.h) g6.e.connect(this.f4772a)).get();
            if (!c0402h.f4783f) {
                String str2 = AbstractC1000n.removeSpecialChars(c0402h.f4778a.getTitle()) + c0402h.f4781d;
                Iterator<org.jsoup.nodes.b> it2 = hVar.getElementsByTag("LI").iterator();
                int i2 = 0;
                loop0: while (true) {
                    boolean hasNext = it2.hasNext();
                    ArrayList arrayList = this.f4773b;
                    if (!hasNext) {
                        if (arrayList.size() <= 0) {
                            return null;
                        }
                        c0402h.addMagnetsAllDebrid(arrayList);
                        return null;
                    }
                    org.jsoup.nodes.b next = it2.next();
                    if (next.attr("class") != null && next.attr("class").contains("card search-result")) {
                        Iterator<org.jsoup.nodes.b> it3 = next.getElementsByTag("A").iterator();
                        while (it3.hasNext()) {
                            org.jsoup.nodes.b next2 = it3.next();
                            if (c0402h.removeSpecialChars(next2.text()).toLowerCase().contains(str2.toLowerCase()) && flix.com.vision.processors.english.m.isEnglishlang(next2.text(), c0402h.f4778a.getTitle())) {
                                Iterator<org.jsoup.nodes.b> it4 = next.getElementsByTag("A").iterator();
                                while (it4.hasNext()) {
                                    String attr = it4.next().attr("href");
                                    if (!attr.startsWith("magnet")) {
                                        it = it2;
                                    } else {
                                        if (c0402h.f4783f) {
                                            break loop0;
                                        }
                                        if (App.getInstance().addHash(attr)) {
                                            if (RealDebridCommon.f15828m) {
                                                it = it2;
                                                str = null;
                                                try {
                                                    new Handler(Looper.getMainLooper()).postDelayed(new A4.n(16, this, attr), i2 * 250);
                                                } catch (Exception unused) {
                                                    return null;
                                                }
                                            } else {
                                                it = it2;
                                                str = null;
                                            }
                                            if (AllDebridCommon.f15806f) {
                                                arrayList.add(attr);
                                            }
                                            if (PremiumizeCommon.f15822b) {
                                                c0402h.getMagnetPremiumize(attr);
                                            }
                                            if (J4.b.f1541a) {
                                                c0402h.getMagnetTorBox(attr);
                                            }
                                            if (G4.b.f1174a) {
                                                c0402h.getMagnetOffcloud(attr);
                                            }
                                            i2++;
                                            if (i2 > c0402h.max_page) {
                                                if (arrayList.size() <= 0) {
                                                    return str;
                                                }
                                                c0402h.addMagnetsAllDebrid(arrayList);
                                                return str;
                                            }
                                        }
                                    }
                                    it2 = it;
                                }
                            }
                            it2 = it2;
                        }
                    }
                    it2 = it2;
                }
            }
        } catch (Exception unused2) {
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((AsyncTaskC0399e) str);
    }
}
