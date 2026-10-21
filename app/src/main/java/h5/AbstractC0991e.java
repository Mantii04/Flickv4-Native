package h5;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import cz.msebera.android.httpclient.client.utils.URLEncodedUtils;
import flix.com.vision.models.torrent.AllTorrentsInfoDTO;
import flix.com.vision.models.torrent.RealDebridException;
import flix.com.vision.models.torrent.TorrentFilesDTO;
import flix.com.vision.models.torrent.TorrentInfoDTO;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: h5.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0991e {
    public static String a(Map map) {
        String[] strArr = {""};
        AtomicInteger atomicInteger = new AtomicInteger();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (atomicInteger.get() == 0) {
                strArr[0] = strArr[0] + str + "=" + str2;
                atomicInteger.getAndIncrement();
            } else {
                strArr[0] = strArr[0] + "&" + str + "=" + str2;
            }
        }
        return strArr[0];
    }

    public static void b(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestProperty("Content-Type", URLEncodedUtils.CONTENT_TYPE);
        httpURLConnection.setRequestProperty(URLEncodedUtils.CONTENT_TYPE, "utf-8");
        if (str != null) {
            httpURLConnection.setRequestProperty("Authorization", "Bearer ".concat(str));
        }
        httpURLConnection.setRequestProperty(T4.f.f3706t, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11");
    }

    public static HttpURLConnection getHttpUrlConnection(URL url, String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setRequestProperty(T4.f.f3706t, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11");
        if (str != null) {
            httpURLConnection.setRequestProperty("Authorization", "Bearer ".concat(str));
        }
        httpURLConnection.connect();
        return httpURLConnection;
    }

    public static String getLinkOfSelectedTorrentFromTorrentInfo(TorrentInfoDTO torrentInfoDTO, List<AllTorrentsInfoDTO> list) throws RealDebridException {
        for (AllTorrentsInfoDTO allTorrentsInfoDTO : list) {
            if (torrentInfoDTO.getHash().equals(allTorrentsInfoDTO.getHash()) && !allTorrentsInfoDTO.getLinks().isEmpty()) {
                return allTorrentsInfoDTO.getLinks().get(0);
            }
        }
        throw new RealDebridException("File not available in the server");
    }

    public static ObjectMapper getObjectMapper() {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        return objectMapper;
    }

    public static String postAndGetData(String str, String str2, Map<String, String> map) throws IOException {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        } catch (Throwable th) {
            th = th;
        }
        try {
            b(httpURLConnection, str2);
            byte[] bytes = a(map).getBytes(StandardCharsets.UTF_8);
            httpURLConnection.setRequestProperty("Content-Length", Integer.toString(bytes.length));
            httpURLConnection.connect();
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(bytes);
            dataOutputStream.flush();
            if (httpURLConnection.getResponseCode() != 200 && httpURLConnection.getResponseCode() != 201) {
                if (httpURLConnection.getResponseCode() == 401) {
                    httpURLConnection.disconnect();
                    return null;
                }
                httpURLConnection.disconnect();
                return null;
            }
            String readJSON = T4.f.readJSON(httpURLConnection.getInputStream());
            httpURLConnection.disconnect();
            return readJSON;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    public static int selectCorrectFileId(TorrentInfoDTO torrentInfoDTO) {
        int i2 = 1;
        long j7 = 0;
        for (TorrentFilesDTO torrentFilesDTO : torrentInfoDTO.getFiles()) {
            if (torrentFilesDTO.getBytes() > j7) {
                i2 = torrentFilesDTO.getId();
                j7 = torrentFilesDTO.getBytes();
            }
        }
        return i2;
    }
}
