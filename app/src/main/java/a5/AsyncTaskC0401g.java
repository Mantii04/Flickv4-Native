package a5;

import android.os.AsyncTask;
import android.util.Log;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.models.VideoSource;
import flix.com.vision.models.torrent.AllTorrentsInfoDTO;
import flix.com.vision.models.torrent.RealDebridException;
import flix.com.vision.models.torrent.TorrentInfoDTO;
import h5.AbstractC0991e;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* renamed from: a5.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class AsyncTaskC0401g extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4775a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f4776b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0402h f4777c;

    public AsyncTaskC0401g(C0402h c0402h, String str, String str2) {
        this.f4777c = c0402h;
        this.f4775a = str;
        this.f4776b = str2;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        String readJSON;
        String str = this.f4775a;
        String str2 = this.f4776b;
        C0402h c0402h = this.f4777c;
        c0402h.getClass();
        try {
            TorrentInfoDTO torrentInfoDTO = (TorrentInfoDTO) AbstractC0991e.getObjectMapper().readValue(str, TorrentInfoDTO.class);
            int selectCorrectFileId = AbstractC0991e.selectCorrectFileId(torrentInfoDTO);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("files", String.valueOf(selectCorrectFileId));
            AbstractC0991e.postAndGetData("https://api.real-debrid.com/rest/1.0/torrents/selectFiles/" + str2, RealDebridCommon.f15824b, linkedHashMap);
            HttpURLConnection httpUrlConnection = AbstractC0991e.getHttpUrlConnection(new URL("https://api.real-debrid.com/rest/1.0/torrents"), RealDebridCommon.f15824b);
            if (httpUrlConnection.getResponseCode() == 200 && (readJSON = T4.f.readJSON(httpUrlConnection.getInputStream())) != null) {
                ArrayList arrayList = new ArrayList();
                JsonArray asJsonArray = JsonParser.parseString(readJSON).getAsJsonArray();
                for (int i2 = 0; i2 < asJsonArray.size(); i2++) {
                    JsonObject asJsonObject = asJsonArray.get(i2).getAsJsonObject();
                    AllTorrentsInfoDTO allTorrentsInfoDTO = new AllTorrentsInfoDTO();
                    allTorrentsInfoDTO.setHash(asJsonObject.get("hash").getAsString());
                    JsonArray asJsonArray2 = asJsonObject.get("links").getAsJsonArray();
                    ArrayList arrayList2 = new ArrayList();
                    for (int i7 = 0; i7 < asJsonArray2.size(); i7++) {
                        arrayList2.add(asJsonArray2.get(i7).getAsString());
                    }
                    allTorrentsInfoDTO.setLinks(arrayList2);
                    arrayList.add(allTorrentsInfoDTO);
                }
                String linkOfSelectedTorrentFromTorrentInfo = AbstractC0991e.getLinkOfSelectedTorrentFromTorrentInfo(torrentInfoDTO, arrayList);
                VideoSource videoSource = new VideoSource();
                videoSource.isPremiumSupported = true;
                videoSource.streamUrl = linkOfSelectedTorrentFromTorrentInfo;
                videoSource.originalFileName = torrentInfoDTO.getFilename();
                videoSource.isTorrentMagnet = true;
                c0402h.addLink(videoSource);
                return null;
            }
            return null;
        } catch (RealDebridException e3) {
            Log.d(MovieDetailActivity.class.toString(), "", e3);
            return null;
        } catch (Exception e7) {
            Log.d(MovieDetailActivity.class.toString(), "", e7);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((AsyncTaskC0401g) str);
    }
}
