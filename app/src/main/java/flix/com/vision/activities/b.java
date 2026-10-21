package flix.com.vision.activities;

import P5.i;
import android.os.AsyncTask;
import androidx.media3.exoplayer.upstream.CmcdData;
import flix.com.vision.App;
import flix.com.vision.activities.DramaDetailActivity;
import flix.com.vision.models.Episode;
import g6.e;
import j6.h;
import java.util.Collections;
import java.util.Iterator;
import kotlin.text.Regex;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final class b extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public h f15407a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f15408b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DramaDetailActivity f15409c;

    public b(DramaDetailActivity dramaDetailActivity, String str) {
        this.f15409c = dramaDetailActivity;
        this.f15408b = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        DramaDetailActivity dramaDetailActivity = this.f15409c;
        try {
            String str = this.f15408b;
            h parse = e.parse(App.get(str, str).body().string());
            this.f15407a = parse;
            Iterator<org.jsoup.nodes.b> it = parse.select("ul.listing li, table.listing td.episodeSub").iterator();
            while (it.hasNext()) {
                org.jsoup.nodes.b next = it.next();
                String attr = next.selectFirst(CmcdData.OBJECT_TYPE_AUDIO_ONLY).attr("title");
                String str2 = dramaDetailActivity.f14564v + next.selectFirst(CmcdData.OBJECT_TYPE_AUDIO_ONLY).attr("href");
                String str3 = ((i) new Regex("Episode\\s(\\d+)").find(attr, 0)).getGroupValues().get(1);
                Episode episode = new Episode();
                episode.number = Integer.parseInt(str3);
                episode.url = str2;
                episode.label = attr.replace(".", "").trim();
                dramaDetailActivity.f14563u.add(episode);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((b) str);
        h hVar = this.f15407a;
        DramaDetailActivity dramaDetailActivity = this.f15409c;
        dramaDetailActivity.getClass();
        try {
            Iterator<org.jsoup.nodes.b> it = hVar.select("div.barContentInfo p:contains(Genres:) a").iterator();
            String str2 = "";
            String str3 = "";
            while (it.hasNext()) {
                str3 = str3 + it.next().text().trim();
            }
            dramaDetailActivity.f14559q.setText(hVar.selectFirst("div.barContentInfo p.des, div.barContentInfo p:last-child").nextElementSibling().select("p").text());
            org.jsoup.nodes.b first = hVar.getElementsByClass("barContentInfo").first();
            if (first != null) {
                Iterator<org.jsoup.nodes.b> it2 = first.getElementsByTag("A").iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    org.jsoup.nodes.b next = it2.next();
                    if (next.attr("href").contains("country")) {
                        str2 = next.text().trim();
                        break;
                    }
                }
            }
            if (str3.length() > 60) {
                str3 = str3.substring(0, 60);
            }
            dramaDetailActivity.f14554f.setText(dramaDetailActivity.f14562t.year + " · " + str2 + " · " + str3);
        } catch (Exception unused) {
        }
        if (dramaDetailActivity.f14563u.size() != 1) {
            if (dramaDetailActivity.f14563u.size() <= 0) {
                EventBus.getDefault().post(DramaDetailActivity.RESULT_EVENT.f14570e);
                return;
            } else {
                Collections.reverse(dramaDetailActivity.f14563u);
                EventBus.getDefault().post(DramaDetailActivity.RESULT_EVENT.f14569b);
                return;
            }
        }
        if (dramaDetailActivity.f14563u.size() == 1) {
            dramaDetailActivity.f14565w.setVisibility(0);
            dramaDetailActivity.f14556m.setVisibility(8);
            dramaDetailActivity.f14557n.setVisibility(8);
            dramaDetailActivity.f14557n.clearFocus();
            dramaDetailActivity.f14565w.requestFocus();
            dramaDetailActivity.openEpisode(0);
        }
    }
}
