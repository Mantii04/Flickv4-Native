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

/* loaded from: classes2.dex */
public final class s extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4808a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f4809b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ t f4810c;

    public s(t tVar, String str, String str2) {
        this.f4810c = tVar;
        this.f4808a = str;
        this.f4809b = str2;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        String readJSON;
        String str = this.f4808a;
        String str2 = this.f4809b;
        t tVar = this.f4810c;
        tVar.getClass();
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
                videoSource.originalFileName = torrentInfoDTO.getFilename();
                videoSource.streamUrl = linkOfSelectedTorrentFromTorrentInfo;
                videoSource.isTorrentMagnet = true;
                tVar.addLink(videoSource);
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
        super.onPostExecute((s) str);
    }
}
