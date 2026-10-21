package flix.com.vision.subtitles;

import android.net.Uri;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.google.gson.annotations.SerializedName;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPInputStream;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import org.apache.commons.lang3.StringUtils;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.http.GET;
import retrofit2.http.Path;

/* loaded from: classes2.dex */
public class OpenSubtitles {
    private static final String BASE_URL = "https://rest.opensubtitles.org/";
    private static final Service service = buildService();

    public static class Params {

        public static class Key {
            public static final String EPISODE = "episode";
            public static final String IMDB_ID = "imdbid";
            public static final String QUERY = "query";
            public static final String SEASON = "season";
            public static final String SUB_LANGUAGE_ID = "sublanguageid";
        }
    }

    public interface Service {
        @GET("search/{params}")
        Call<List<Subtitle>> search(@Path(encoded = true, value = "params") String str);
    }

    public static class Subtitle {

        @SerializedName("IDMovie")
        public String idMovie;

        @SerializedName("IDMovieImdb")
        public String idMovieImdb;

        @SerializedName("IDSubMovieFile")
        public String idSubMovieFile;

        @SerializedName("IDSubtitle")
        public String idSubtitle;

        @SerializedName("IDSubtitleFile")
        public String idSubtitleFile;

        @SerializedName("InfoFormat")
        public String infoFormat;

        @SerializedName("InfoOther")
        public String infoOther;

        @SerializedName("InfoReleaseGroup")
        public String infoReleaseGroup;

        @SerializedName("ISO639")
        public String iso639;

        @SerializedName("LanguageName")
        public String languageName;

        @SerializedName("MatchedBy")
        public String matchedBy;

        @SerializedName("MovieByteSize")
        public String movieByteSize;

        @SerializedName("MovieFPS")
        public String movieFPS;

        @SerializedName("MovieHash")
        public String movieHash;

        @SerializedName("MovieImdbRating")
        public String movieImdbRating;

        @SerializedName("MovieKind")
        public String movieKind;

        @SerializedName("MovieName")
        public String movieName;

        @SerializedName("MovieNameEng")
        public String movieNameEng;

        @SerializedName("MovieReleaseName")
        public String movieReleaseName;

        @SerializedName("MovieTimeMS")
        public String movieTimeMS;

        @SerializedName("MovieYear")
        public String movieYear;

        @SerializedName("QueryCached")
        public Integer queryCached;

        @SerializedName("QueryNumber")
        public String queryNumber;

        @SerializedName("Score")
        public Double score;

        @SerializedName("SeriesEpisode")
        public String seriesEpisode;

        @SerializedName("SeriesIMDBParent")
        public String seriesIMDBParent;

        @SerializedName("SeriesSeason")
        public String seriesSeason;

        @SerializedName("SubActualCD")
        public String subActualCD;

        @SerializedName("SubAddDate")
        public String subAddDate;

        @SerializedName("SubAuthorComment")
        public String subAuthorComment;

        @SerializedName("SubAutoTranslation")
        public String subAutoTranslation;

        @SerializedName("SubBad")
        public String subBad;

        @SerializedName("SubComments")
        public String subComments;

        @SerializedName("SubDownloadLink")
        public String subDownloadLink = "";

        @SerializedName("SubDownloadsCnt")
        public String subDownloadsCnt;

        @SerializedName("SubEncoding")
        public String subEncoding;

        @SerializedName("SubFeatured")
        public String subFeatured;

        @SerializedName("SubFileName")
        public String subFileName;

        @SerializedName("SubForeignPartsOnly")
        public String subForeignPartsOnly;

        @SerializedName("SubFormat")
        public String subFormat;

        @SerializedName("SubFromTrusted")
        public String subFromTrusted;

        @SerializedName("SubHD")
        public String subHD;

        @SerializedName("SubHash")
        public String subHash;

        @SerializedName("SubHearingImpaired")
        public String subHearingImpaired;

        @SerializedName("SubLanguageID")
        public String subLanguageID;

        @SerializedName("SubLastTS")
        public String subLastTS;

        @SerializedName("SubRating")
        public String subRating;

        @SerializedName("SubSize")
        public String subSize;

        @SerializedName("SubSumCD")
        public String subSumCD;

        @SerializedName("SubSumVotes")
        public String subSumVotes;

        @SerializedName("SubTSGroup")
        public String subTSGroup;

        @SerializedName("SubTranslator")
        public String subTranslator;

        @SerializedName("SubtitlesLink")
        public String subtitlesLink;

        @SerializedName("UserID")
        public String userID;

        @SerializedName("UserNickName")
        public String userNickName;

        @SerializedName("UserRank")
        public String userRank;

        @SerializedName("ZipDownloadLink")
        public String zipDownloadLink;
    }

    private static Service buildService() {
        return (Service) new Retrofit.Builder().baseUrl(BASE_URL).client(new OkHttpClient.Builder().addInterceptor(new a()).build()).addConverterFactory(GsonConverterFactory.create()).build().create(Service.class);
    }

    public static Uri download(Subtitle subtitle) throws IOException {
        String str = subtitle.subFileName;
        if (str == null) {
            str = "subtitle.srt";
        }
        String str2 = subtitle.subDownloadLink;
        int lastIndexOf = str.lastIndexOf(46);
        String substring = lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
        int lastIndexOf2 = str2.lastIndexOf(46);
        File createTempFile = File.createTempFile(substring + "-", lastIndexOf2 == -1 ? "" : str2.substring(lastIndexOf2));
        InputStream openStream = new URL(str2).openStream();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = openStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.close();
                openStream.close();
                File file = new File(createTempFile.getParentFile(), str);
                if (file.exists()) {
                    file.delete();
                }
                FileInputStream fileInputStream = new FileInputStream(createTempFile);
                try {
                    GZIPInputStream gZIPInputStream = new GZIPInputStream(fileInputStream);
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        try {
                            byte[] bArr2 = new byte[1024];
                            while (true) {
                                int read2 = gZIPInputStream.read(bArr2);
                                if (read2 == -1) {
                                    fileOutputStream2.close();
                                    gZIPInputStream.close();
                                    fileInputStream.close();
                                    createTempFile.delete();
                                    return Uri.fromFile(file);
                                }
                                fileOutputStream2.write(bArr2, 0, read2);
                            }
                        } finally {
                        }
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } finally {
            }
        } catch (Throwable th3) {
            if (openStream != null) {
                try {
                    openStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
            }
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Response lambda$buildService$0(Interceptor.Chain chain) throws IOException {
        return chain.proceed(chain.request().newBuilder().addHeader("User-Agent", "TemporaryUserAgent").build());
    }

    public static Call<List<Subtitle>> search(String str, String str2, Integer num, Integer num2, String str3) {
        ArrayList arrayList = new ArrayList();
        if (num2 != null) {
            arrayList.add("episode-" + num2);
        }
        if (str != null && !str.isEmpty()) {
            arrayList.add("imdbid-".concat(str));
        }
        if (num != null) {
            arrayList.add("season-" + num);
        }
        if (str3 != null && !str3.isEmpty()) {
            arrayList.add("sublanguageid-".concat(str3));
        }
        if (str2 != null && !str2.isEmpty()) {
            try {
                arrayList.add("query-" + URLEncoder.encode(str2.toLowerCase(), "UTF-8"));
            } catch (Exception unused) {
                arrayList.add("query-" + str2.toLowerCase().replace(StringUtils.SPACE, "%20"));
            }
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            sb.append((String) arrayList.get(i2));
            if (i2 < arrayList.size() - 1) {
                sb.append(RemoteSettings.FORWARD_SLASH_STRING);
            }
        }
        return service.search(sb.toString());
    }
}
