package flix.com.vision.activities;

import android.os.AsyncTask;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.firebase.analytics.FirebaseAnalytics;
import flix.com.vision.activities.AnimeDetailActivity;
import flix.com.vision.models.Episode;
import g6.e;
import j6.h;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import org.greenrobot.eventbus.EventBus;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public final class a extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f15306a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f15307b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AnimeDetailActivity f15308c;

    public a(AnimeDetailActivity animeDetailActivity, String str, String str2) {
        this.f15308c = animeDetailActivity;
        this.f15306a = str;
        this.f15307b = str2;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        AnimeDetailActivity animeDetailActivity = this.f15308c;
        try {
            h hVar = ((h6.h) e.connect(this.f15306a)).get();
            org.jsoup.nodes.b elementById = hVar.getElementById("movie_id");
            String attr = elementById.attr(FirebaseAnalytics.Param.VALUE);
            String attr2 = elementById.attr("default_ep");
            String attr3 = elementById.attr("alias_anime");
            Iterator<org.jsoup.nodes.b> it = hVar.getElementById("episode_page").getElementsByTag(CmcdData.OBJECT_TYPE_AUDIO_ONLY).iterator();
            while (it.hasNext()) {
                org.jsoup.nodes.b next = it.next();
                Elements elementsByTag = ((h6.h) e.connect(this.f15307b + "/ajax/load-list-episode?ep_start=" + next.attr("ep_start") + "&ep_end=" + next.attr("ep_end") + "&id=" + attr + "&default_ep=" + attr2 + "&alias_anime=" + attr3)).get().getElementsByTag("li");
                Collections.reverse(elementsByTag);
                Iterator<org.jsoup.nodes.b> it2 = elementsByTag.iterator();
                while (it2.hasNext()) {
                    org.jsoup.nodes.b next2 = it2.next();
                    try {
                        String str = animeDetailActivity.f14465v + next2.getElementsByTag(CmcdData.OBJECT_TYPE_AUDIO_ONLY).first().attr("href").trim();
                        String trim = next2.getElementsByClass("name").first().text().replace("EP ", "").trim();
                        Episode episode = new Episode();
                        episode.url = str;
                        episode.label = trim;
                        episode.title = trim;
                        try {
                            episode.number = Integer.parseInt(trim);
                        } catch (Exception unused) {
                        }
                        episode.anime = true;
                        animeDetailActivity.f14464u.add(episode);
                    } catch (Exception unused2) {
                    }
                }
            }
            return null;
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        } catch (Exception unused3) {
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((a) str);
        AnimeDetailActivity animeDetailActivity = this.f15308c;
        if (animeDetailActivity.f14464u.size() != 1) {
            if (animeDetailActivity.f14464u.size() > 0) {
                EventBus.getDefault().post(AnimeDetailActivity.RESULT_EVENT.f14470b);
                return;
            } else {
                EventBus.getDefault().post(AnimeDetailActivity.RESULT_EVENT.f14471e);
                return;
            }
        }
        if (animeDetailActivity.f14464u.size() == 1) {
            animeDetailActivity.f14467x.setVisibility(0);
            animeDetailActivity.f14457m.setVisibility(8);
            animeDetailActivity.f14458n.setVisibility(8);
            animeDetailActivity.f14458n.clearFocus();
            animeDetailActivity.f14467x.requestFocus();
        }
    }
}
