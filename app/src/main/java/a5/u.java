package a5;

import android.os.AsyncTask;
import flix.com.vision.App;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import h5.AbstractC1000n;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class u extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4814a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f4815b;

    public u(x xVar, String str) {
        this.f4815b = xVar;
        this.f4814a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        x xVar = this.f4815b;
        try {
            j6.h hVar = ((h6.h) g6.e.connect(this.f4814a)).get();
            if (!xVar.f4825g) {
                String str = AbstractC1000n.removeSpecialChars(xVar.f4819a.getTitle()) + xVar.f4824f;
                Iterator<org.jsoup.nodes.b> it = hVar.getElementsByTag("DL").iterator();
                int i2 = 0;
                loop0: while (true) {
                    if (it.hasNext()) {
                        org.jsoup.nodes.b next = it.next();
                        Iterator<org.jsoup.nodes.b> it2 = next.getElementsByTag("A").iterator();
                        while (it2.hasNext()) {
                            org.jsoup.nodes.b next2 = it2.next();
                            if (xVar.removeSpecialChars(next2.text()).toLowerCase().contains(str.toLowerCase()) && flix.com.vision.processors.english.m.isEnglishlang(next2.text(), xVar.f4819a.getTitle())) {
                                Iterator<org.jsoup.nodes.b> it3 = next.getElementsByTag("A").iterator();
                                while (it3.hasNext()) {
                                    String attr = it3.next().attr("href");
                                    if (attr.startsWith("magnet")) {
                                        if (xVar.f4825g) {
                                            break loop0;
                                        }
                                        if (App.getInstance().addHash(attr)) {
                                            if (RealDebridCommon.f15828m) {
                                                D4.a.getTorrent(attr, RealDebridCommon.f15826f, RealDebridCommon.f15824b).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new E4.c(xVar, 10), new A4.c(21));
                                            }
                                            if (AllDebridCommon.f15806f) {
                                                xVar.f4821c.add(attr);
                                            }
                                            if (PremiumizeCommon.f15822b) {
                                                xVar.getMagnetPremiumize(attr);
                                            }
                                            if (J4.b.f1541a) {
                                                xVar.getMagnetTorBox(attr);
                                            }
                                            if (G4.b.f1174a) {
                                                xVar.getMagnetOffcloud(attr);
                                            }
                                            i2++;
                                            if (i2 > xVar.max_page) {
                                                if (xVar.f4821c.size() > 0) {
                                                    xVar.addMagnetsAllDebrid(xVar.f4821c);
                                                    return null;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else if (xVar.f4821c.size() > 0) {
                        xVar.addMagnetsAllDebrid(xVar.f4821c);
                    }
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((u) str);
    }
}
