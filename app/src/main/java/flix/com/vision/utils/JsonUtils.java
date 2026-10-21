package flix.com.vision.utils;

import A.i;
import T4.m;
import V4.a;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.media3.datasource.DataSchemeDataSource;
import b.c;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import flix.com.vision.App;
import flix.com.vision.models.Cast;
import flix.com.vision.models.Genre;
import flix.com.vision.models.Movie;
import flix.com.vision.models.VideoSource;
import flix.com.vision.models.Writer;
import flix.com.vision.models.adult.AdultCategory;
import flix.com.vision.models.hindi.MovieRequest;
import flix.com.vision.models.hindi.PlaylistItem;
import flix.com.vision.subtitles.OpenSubtitles;
import g6.e;
import h5.AbstractC1000n;
import j6.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.b;

@Keep
/* loaded from: classes2.dex */
public class JsonUtils {
    public static boolean availableOnStreamingServices(JsonElement jsonElement) {
        try {
            JsonObject asJsonObject = jsonElement.getAsJsonObject().get("results").getAsJsonObject();
            for (int i2 = 0; i2 < asJsonObject.size(); i2++) {
                if (asJsonObject.get("US").getAsJsonObject() != null || asJsonObject.get("GB").getAsJsonObject() != null || asJsonObject.get("CA").getAsJsonObject() != null) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static Writer getDirector(JsonElement jsonElement) {
        ArrayList arrayList = new ArrayList();
        JsonArray f3 = c.f("crew", jsonElement);
        String str = "";
        for (int i2 = 0; i2 < f3.size(); i2++) {
            JsonObject asJsonObject = f3.get(i2).getAsJsonObject();
            String asString = asJsonObject.get("job").getAsString();
            if (asString != null && asString.trim().equalsIgnoreCase("director")) {
                String asString2 = asJsonObject.get("name").getAsString();
                if (asString2 != null) {
                    str = asString2;
                }
                long asLong = asJsonObject.get("id").getAsLong();
                Writer writer = new Writer();
                if (str.isEmpty()) {
                    str = "N/A";
                }
                writer.setName(str);
                writer.setId(asLong);
                arrayList.add(writer);
            }
        }
        return (Writer) arrayList.get(0);
    }

    public static String getLogoPath(String str) {
        JsonObject asJsonObject = JsonParser.parseString(str).getAsJsonObject();
        if (asJsonObject == null) {
            return null;
        }
        new ArrayList();
        JsonArray asJsonArray = asJsonObject.getAsJsonObject().get("logos").getAsJsonArray();
        if (asJsonArray.size() > 0) {
            for (int i2 = 0; i2 < asJsonArray.size(); i2++) {
                if (asJsonArray.get(i2).getAsJsonObject().get("iso_639_1").getAsString().equalsIgnoreCase("en")) {
                    return asJsonArray.get(i2).getAsJsonObject().get("file_path").getAsString();
                }
            }
        }
        return null;
    }

    public static String getWriters(JsonElement jsonElement) {
        String asString;
        JsonArray f3 = c.f("crew", jsonElement);
        String str = "";
        for (int i2 = 0; i2 < f3.size(); i2++) {
            JsonObject asJsonObject = f3.get(i2).getAsJsonObject();
            String asString2 = asJsonObject.get("department").getAsString();
            if (asString2 != null && asString2.trim().equalsIgnoreCase("writing") && (asString = asJsonObject.get("name").getAsString()) != null) {
                str = i.C(str, asString, "certification ");
            }
        }
        String trim = str.trim();
        return (trim == null || trim.isEmpty()) ? "N/A" : i.d(1, 0, trim);
    }

    public static String getWritersTV(JsonElement jsonElement) {
        String asString;
        JsonArray f3 = c.f("crew", jsonElement);
        String str = "";
        for (int i2 = 0; i2 < f3.size(); i2++) {
            JsonObject asJsonObject = f3.get(i2).getAsJsonObject();
            String asString2 = asJsonObject.get("department").getAsString();
            if (asString2 != null && asString2.trim().equalsIgnoreCase("writing") && (asString = asJsonObject.get("name").getAsString()) != null) {
                str = i.C(str, asString, StringUtils.LF);
            }
        }
        String trim = str.trim();
        return (trim == null || trim.isEmpty()) ? "N/A" : trim;
    }

    public static String getYearSplit(String str) {
        return (AbstractC1000n.isEmpty(str) || !str.contains("-")) ? "" : str.split("-")[0];
    }

    public static JsonElement parse(String str) {
        return JsonParser.parseString(str);
    }

    public static String parse123MoviesHubearch(JsonElement jsonElement, String str, String str2) {
        h parse = e.parse(jsonElement.getAsJsonObject().get(FirebaseAnalytics.Param.CONTENT).getAsString());
        if (str2 != null) {
            Iterator<b> it = parse.getElementsByClass("ss-title").iterator();
            while (it.hasNext()) {
                b next = it.next();
                String text = next.text();
                if (text.contains("(") && text.contains(str2) && text.replace("-", "").contains(str.replace("-", ""))) {
                    return next.attr("href").replace(".html", "").trim();
                }
            }
        }
        Iterator<b> it2 = parse.getElementsByClass("ss-title").iterator();
        while (it2.hasNext()) {
            b next2 = it2.next();
            if (next2.text().replace("-", "").equalsIgnoreCase(str.replace("-", ""))) {
                return next2.attr("href").replace(".html", "").trim();
            }
        }
        Iterator<b> it3 = parse.getElementsByClass("ss-title").iterator();
        while (it3.hasNext()) {
            b next3 = it3.next();
            if (AbstractC1000n.removeSpecialChars(next3.text()).equalsIgnoreCase(AbstractC1000n.removeSpecialChars(str))) {
                return next3.attr("href").replace(".html", "").trim();
            }
        }
        return "";
    }

    public static ArrayList<AdultCategory> parseAdultCategories(JsonElement jsonElement) {
        if (jsonElement == null) {
            return null;
        }
        ArrayList<AdultCategory> arrayList = new ArrayList<>();
        JsonArray f3 = c.f("categories", jsonElement);
        for (int i2 = 0; i2 < f3.size(); i2++) {
            JsonObject asJsonObject = f3.get(i2).getAsJsonObject();
            String asString = asJsonObject.get("title").getAsString();
            String asString2 = asJsonObject.get("url").getAsString();
            String asString3 = asJsonObject.get("img_url").getAsString();
            AdultCategory adultCategory = new AdultCategory();
            adultCategory.title = asString;
            adultCategory.url = asString2;
            adultCategory.img_url = asString3;
            arrayList.add(adultCategory);
        }
        return arrayList;
    }

    public static ArrayList<Cast> parseCast(JsonElement jsonElement) {
        String str;
        if (jsonElement == null) {
            return null;
        }
        JsonArray f3 = c.f("cast", jsonElement);
        ArrayList<Cast> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < f3.size(); i2++) {
            JsonObject asJsonObject = f3.get(i2).getAsJsonObject();
            String asString = asJsonObject.get("name").getAsString();
            int asInt = asJsonObject.get("gender").getAsInt();
            String asString2 = asJsonObject.get(FirebaseAnalytics.Param.CHARACTER).getAsString();
            long asLong = asJsonObject.get("id").getAsLong();
            if (!asJsonObject.get("profile_path").isJsonNull()) {
                str = App.f14419D + "w185" + asJsonObject.get("profile_path").getAsString();
                Cast cast = new Cast();
                cast.setName(asString);
                cast.setId(asLong);
                cast.gender = asInt;
                cast.CharacterName = asString2;
                cast.setImg_url(str);
                arrayList.add(cast);
            }
            str = null;
            Cast cast2 = new Cast();
            cast2.setName(asString);
            cast2.setId(asLong);
            cast2.gender = asInt;
            cast2.CharacterName = asString2;
            cast2.setImg_url(str);
            arrayList.add(cast2);
        }
        return arrayList;
    }

    public static ArrayList<Movie> parseCastMovies(JsonElement jsonElement, int i2) {
        if (jsonElement == null) {
            return null;
        }
        JsonArray f3 = c.f("cast", jsonElement);
        ArrayList<Movie> arrayList = new ArrayList<>();
        for (int i7 = 0; i7 < f3.size(); i7++) {
            arrayList.add(parseMovieData(f3.get(i7).getAsJsonObject(), i2));
        }
        return arrayList;
    }

    public static ArrayList<Genre> parseCategory(JsonElement jsonElement) {
        JsonArray f3;
        if (jsonElement == null || (f3 = c.f("genres", jsonElement)) == null) {
            return null;
        }
        ArrayList<Genre> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < f3.size(); i2++) {
            int asInt = f3.get(i2).getAsJsonObject().get("id").getAsInt();
            String asString = f3.get(i2).getAsJsonObject().get("name").getAsString();
            if (asInt != 16) {
                Genre genre = new Genre();
                genre.id = asInt;
                genre.name = asString;
                arrayList.add(genre);
            }
        }
        return arrayList;
    }

    public static ArrayList<Movie> parseCollectionMovies(JsonElement jsonElement, int i2) {
        if (jsonElement == null) {
            return null;
        }
        JsonArray f3 = c.f("parts", jsonElement);
        ArrayList<Movie> arrayList = new ArrayList<>();
        for (int i7 = 0; i7 < f3.size(); i7++) {
            arrayList.add(parseMovieData(f3.get(i7).getAsJsonObject(), i2));
        }
        return arrayList;
    }

    public static MovieRequest parseDataHindi(String str) {
        Matcher matcher = Pattern.compile("(?s)(?:(?:let|var|const)\\s+\\w+\\s*=\\s*)?(?:new\\s+\\w+\\s*\\(\\s*)?(\\{\"file\".*?\\})\\)?\\s*;").matcher(str);
        if (!matcher.find()) {
            return null;
        }
        try {
            JsonObject asJsonObject = JsonParser.parseString(matcher.group(1)).getAsJsonObject();
            String asString = asJsonObject.get("file").getAsString();
            String asString2 = asJsonObject.get("key").getAsString();
            String asString3 = asJsonObject.get("host").getAsString();
            String asString4 = asJsonObject.get("href").getAsString();
            MovieRequest movieRequest = new MovieRequest();
            movieRequest.data = asString;
            movieRequest.token = asString2;
            movieRequest.href = asString4;
            movieRequest.host = asString3;
            return movieRequest;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public static ArrayList<Movie> parseDirectorMovies(JsonElement jsonElement, int i2) {
        if (jsonElement == null) {
            return null;
        }
        JsonArray f3 = c.f("crew", jsonElement);
        ArrayList<Movie> arrayList = new ArrayList<>();
        for (int i7 = 0; i7 < f3.size(); i7++) {
            JsonObject asJsonObject = f3.get(i7).getAsJsonObject();
            String asString = asJsonObject.get("job").getAsString();
            if (asString != null && asString.trim().equalsIgnoreCase("director")) {
                arrayList.add(parseMovieData(asJsonObject, i2));
            }
        }
        return arrayList;
    }

    public static String parseHDOSearch(JsonElement jsonElement, String str, String str2) {
        h parse = e.parse(jsonElement.getAsJsonObject().get(FirebaseAnalytics.Param.CONTENT).getAsString());
        Iterator<b> it = parse.getElementsByClass("ss-title").iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (next.text().equalsIgnoreCase(str)) {
                String str3 = next.attr("href").replace(".html", "").trim().split("-")[r2.length - 1];
                if (str2 != null) {
                    try {
                        Iterator<b> it2 = ((h6.h) e.connect(i.l("https://solarmoviehd.ru/ajax/movie_get_info/", str3, ".html"))).get().getElementsByClass("jtip-top").first().getElementsByClass("jt-info").iterator();
                        while (it2.hasNext()) {
                            String trim = it2.next().text().trim();
                            if (trim.contains("min") || trim.length() <= 0 || !trim.equals(str2)) {
                            }
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return str3;
                    }
                }
                return str3;
            }
        }
        Iterator<b> it3 = parse.getElementsByClass("ss-title").iterator();
        while (it3.hasNext()) {
            b next2 = it3.next();
            if (AbstractC1000n.removeSpecialChars(next2.text()).equalsIgnoreCase(AbstractC1000n.removeSpecialChars(str))) {
                return next2.attr("href").replace(".html", "").trim().split("-")[r8.length - 1];
            }
        }
        return null;
    }

    public static ArrayList<VideoSource> parseLinks(JsonElement jsonElement) {
        ArrayList<VideoSource> arrayList = new ArrayList<>();
        JsonArray asJsonArray = jsonElement.getAsJsonArray();
        for (int i2 = 0; i2 < asJsonArray.size(); i2++) {
            String asString = asJsonArray.get(i2).getAsJsonObject().get("urlvideo").getAsString();
            VideoSource videoSource = new VideoSource();
            videoSource.streamUrl = asString;
            videoSource.streamable = true;
            videoSource.label = a.checkLinkLabel(asString) + "- HQ";
            arrayList.add(videoSource);
        }
        return arrayList;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:4|5|6|(16:8|9|(1:11)(1:41)|(2:14|15)|16|17|(2:37|38)|19|26|27|29|30|(1:32)|24|25|15)(1:45)|44|16|17|(0)|19|26|27|29|30|(0)|24|25|15|2) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d2, code lost:
    
        r5 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d4, code lost:
    
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d6, code lost:
    
        r13 = 0;
        r5 = null;
        r12 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bb A[Catch: Exception -> 0x00d2, TRY_LEAVE, TryCatch #5 {Exception -> 0x00d2, blocks: (B:30:0x00af, B:32:0x00bb), top: B:29:0x00af }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0077 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<flix.com.vision.models.Episode> parseListEpisode(com.google.gson.JsonElement r16, boolean r17) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.utils.JsonUtils.parseListEpisode(com.google.gson.JsonElement, boolean):java.util.ArrayList");
    }

    public static ArrayList<Movie> parseListMovie(JsonElement jsonElement, int i2) {
        if (jsonElement == null) {
            return null;
        }
        JsonArray f3 = c.f("results", jsonElement);
        ArrayList<Movie> arrayList = new ArrayList<>();
        for (int i7 = 0; i7 < f3.size(); i7++) {
            try {
                arrayList.add(parseMovieSimple(f3.get(i7).getAsJsonObject(), i2));
            } catch (Exception unused) {
                Log.d("", "");
            }
        }
        return arrayList;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:133|134|135|136|137|138|139|140|141|(2:143|144)|(15:146|147|148|149|150|151|(1:153)|154|155|156|(4:158|159|160|161)(1:167)|162|163|164|132)|175|155|156|(0)(0)|162|163|164|132) */
    /* JADX WARN: Can't wrap try/catch for region: R(50:0|1|2|3|(44:5|6|(2:8|(1:10))(1:215)|11|(3:199|200|(44:202|(1:204)(1:213)|206|207|(39:209|14|15|(1:17)(1:198)|18|(1:20)(1:197)|21|22|(31:24|25|26|27|28|(25:30|31|32|(10:34|35|36|37|38|39|40|41|(1:43)|44)(13:97|(4:100|(2:104|105)|106|98)|109|110|(1:112)|113|(1:115)|116|(1:118)|119|(8:122|123|124|125|126|127|(4:129|130|131|132)(20:133|134|135|136|137|138|139|140|141|143|144|(15:146|147|148|149|150|151|(1:153)|154|155|156|(4:158|159|160|161)(1:167)|162|163|164|132)|175|155|156|(0)(0)|162|163|164|132)|120)|189|190)|45|46|47|(1:49)|51|(1:(1:54)(1:55))|56|(1:58)|59|(1:61)|62|(3:64|(2:67|65)|68)(1:90)|69|70|(3:72|(2:75|73)|76)(1:89)|77|78|79|(1:83)|85|86)|192|31|32|(0)(0)|45|46|47|(0)|51|(0)|56|(0)|59|(0)|62|(0)(0)|69|70|(0)(0)|77|78|79|(2:81|83)|85|86)|195|26|27|28|(0)|192|31|32|(0)(0)|45|46|47|(0)|51|(0)|56|(0)|59|(0)|62|(0)(0)|69|70|(0)(0)|77|78|79|(0)|85|86)|211|14|15|(0)(0)|18|(0)(0)|21|22|(0)|195|26|27|28|(0)|192|31|32|(0)(0)|45|46|47|(0)|51|(0)|56|(0)|59|(0)|62|(0)(0)|69|70|(0)(0)|77|78|79|(0)|85|86))|13|14|15|(0)(0)|18|(0)(0)|21|22|(0)|195|26|27|28|(0)|192|31|32|(0)(0)|45|46|47|(0)|51|(0)|56|(0)|59|(0)|62|(0)(0)|69|70|(0)(0)|77|78|79|(0)|85|86)|217|6|(0)(0)|11|(0)|13|14|15|(0)(0)|18|(0)(0)|21|22|(0)|195|26|27|28|(0)|192|31|32|(0)(0)|45|46|47|(0)|51|(0)|56|(0)|59|(0)|62|(0)(0)|69|70|(0)(0)|77|78|79|(0)|85|86|(1:(0))) */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02ec A[Catch: Exception -> 0x02f9, TRY_LEAVE, TryCatch #11 {Exception -> 0x02f9, blocks: (B:156:0x02cb, B:158:0x02ec), top: B:155:0x02cb }] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x011a A[Catch: Exception -> 0x0128, TRY_LEAVE, TryCatch #12 {Exception -> 0x0128, blocks: (B:22:0x0114, B:24:0x011a), top: B:21:0x0114 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0132 A[Catch: Exception -> 0x013d, TRY_LEAVE, TryCatch #8 {Exception -> 0x013d, blocks: (B:28:0x012c, B:30:0x0132), top: B:27:0x012c }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x039c A[Catch: Exception -> 0x03a7, TRY_LEAVE, TryCatch #15 {Exception -> 0x03a7, blocks: (B:47:0x0396, B:49:0x039c), top: B:46:0x0396 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x046c A[Catch: Exception -> 0x0475, TryCatch #5 {Exception -> 0x0475, blocks: (B:79:0x0458, B:81:0x046c, B:83:0x0473), top: B:78:0x0458 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0198  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static flix.com.vision.models.Movie parseMovie(com.google.gson.JsonObject r45, int r46) {
        /*
            Method dump skipped, instructions count: 1144
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.utils.JsonUtils.parseMovie(com.google.gson.JsonObject, int):flix.com.vision.models.Movie");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b8 A[Catch: Exception -> 0x00c0, TRY_LEAVE, TryCatch #0 {Exception -> 0x00c0, blocks: (B:43:0x00ae, B:45:0x00b8), top: B:42:0x00ae }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static flix.com.vision.models.Movie parseMovieData(com.google.gson.JsonObject r17, int r18) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.utils.JsonUtils.parseMovieData(com.google.gson.JsonObject, int):flix.com.vision.models.Movie");
    }

    public static MovieRequest parseMovieHindi(String str) {
        return parseDataHindi(str);
    }

    public static MovieRequest parseMovieHindi2(String str) {
        return parseDataHindi(str);
    }

    public static MovieRequest parseMovieHindiSeries(String str) {
        return parseDataHindi(str);
    }

    public static MovieRequest parseMovieHindiSeries2(String str) {
        return parseDataHindi(str);
    }

    public static Movie parseMovieInfo(JsonElement jsonElement, int i2) {
        return parseMovie(jsonElement.getAsJsonObject(), i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0049 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static flix.com.vision.models.Movie parseMovieMulti(com.google.gson.JsonObject r18) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.utils.JsonUtils.parseMovieMulti(com.google.gson.JsonObject):flix.com.vision.models.Movie");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(26:0|1|(2:2|3)|(22:5|6|(1:8)(1:63)|9|10|11|(18:13|14|15|(1:17)|19|(6:21|22|23|24|25|(1:27))(16:50|51|52|(1:54)(1:57)|55|29|(2:32|30)|33|34|(1:(1:37)(1:38))|39|(1:41)|42|(1:44)|45|46)|28|29|(1:30)|33|34|(0)|39|(0)|42|(0)|45|46)|61|19|(0)(0)|28|29|(1:30)|33|34|(0)|39|(0)|42|(0)|45|46)|65|6|(0)(0)|9|10|11|(0)|61|19|(0)(0)|28|29|(1:30)|33|34|(0)|39|(0)|42|(0)|45|46) */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005a A[Catch: Exception -> 0x009b, TRY_LEAVE, TryCatch #3 {Exception -> 0x009b, blocks: (B:11:0x0050, B:13:0x005a), top: B:10:0x0050 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x012c A[LOOP:0: B:30:0x0126->B:32:0x012c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static flix.com.vision.models.Movie parseMovieSimple(com.google.gson.JsonObject r19, int r20) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.utils.JsonUtils.parseMovieSimple(com.google.gson.JsonObject, int):flix.com.vision.models.Movie");
    }

    private static ArrayList<Movie> parseMoviesFromKownfor(JsonObject jsonObject) {
        ArrayList<Movie> arrayList = new ArrayList<>();
        try {
            JsonArray asJsonArray = jsonObject.getAsJsonObject().get("known_for").getAsJsonArray();
            for (int i2 = 0; i2 < asJsonArray.size(); i2++) {
                Movie parseMovieMulti = parseMovieMulti(asJsonArray.get(i2).getAsJsonObject());
                if (parseMovieMulti != null && !parseMovieMulti.getTitle().toLowerCase(Locale.ROOT).trim().equals("gomorrah")) {
                    arrayList.add(parseMovieMulti);
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    public static ArrayList<Cast> parsePeople(JsonElement jsonElement) {
        if (jsonElement == null) {
            return null;
        }
        JsonArray f3 = c.f("results", jsonElement);
        ArrayList<Cast> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < f3.size(); i2++) {
            JsonObject asJsonObject = f3.get(i2).getAsJsonObject();
            Cast cast = new Cast();
            String asString = asJsonObject.get("name").getAsString();
            String str = App.f14419D + "w185" + asJsonObject.get("profile_path").getAsString();
            int asInt = asJsonObject.get("id").getAsInt();
            cast.setName(asString);
            cast.setId(asInt);
            cast.setImg_url(str);
            arrayList.add(cast);
        }
        return arrayList;
    }

    public static ArrayList<PlaylistItem> parsePlaylistHindi(JsonArray jsonArray) {
        ArrayList<PlaylistItem> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < jsonArray.size(); i2++) {
            try {
                JsonObject asJsonObject = jsonArray.get(i2).getAsJsonObject();
                String asString = asJsonObject.get("file").getAsString();
                String asString2 = asJsonObject.get("id").getAsString();
                String asString3 = asJsonObject.get("title").getAsString();
                PlaylistItem playlistItem = new PlaylistItem();
                playlistItem.file = asString;
                playlistItem.id = asString2;
                playlistItem.language = asString3;
                arrayList.add(playlistItem);
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    public static ArrayList<PlaylistItem> parsePlaylistHindiSeries(JsonArray jsonArray, int i2, int i7) {
        ArrayList<PlaylistItem> arrayList = new ArrayList<>();
        for (int i8 = 0; i8 < jsonArray.size(); i8++) {
            try {
                JsonObject asJsonObject = jsonArray.get(i8).getAsJsonObject();
                String asString = asJsonObject.get("id").getAsString();
                StringBuilder sb = new StringBuilder();
                try {
                    sb.append(i2);
                    sb.append("");
                    if (asString.equalsIgnoreCase(sb.toString())) {
                        JsonArray asJsonArray = asJsonObject.getAsJsonArray("folder");
                        for (int i9 = 0; i9 < asJsonArray.size(); i9++) {
                            JsonObject asJsonObject2 = asJsonArray.get(i9).getAsJsonObject();
                            String asString2 = asJsonObject2.get(OpenSubtitles.Params.Key.EPISODE).getAsString();
                            StringBuilder sb2 = new StringBuilder();
                            try {
                                sb2.append(i7);
                                sb2.append("");
                                if (asString2.equalsIgnoreCase(sb2.toString())) {
                                    JsonArray asJsonArray2 = asJsonObject2.get("folder").getAsJsonArray();
                                    for (int i10 = 0; i10 < asJsonArray2.size(); i10++) {
                                        try {
                                            JsonObject asJsonObject3 = asJsonArray2.get(i10).getAsJsonObject();
                                            String asString3 = asJsonObject3.get("file").getAsString();
                                            String asString4 = asJsonObject3.get("id").getAsString();
                                            String asString5 = asJsonObject3.get("title").getAsString();
                                            PlaylistItem playlistItem = new PlaylistItem();
                                            playlistItem.file = asString3;
                                            playlistItem.id = asString4;
                                            playlistItem.language = asString5;
                                            arrayList.add(playlistItem);
                                        } catch (Exception unused) {
                                        }
                                    }
                                }
                            } catch (Exception unused2) {
                            }
                        }
                    }
                } catch (Exception unused3) {
                }
            } catch (Exception unused4) {
            }
        }
        return arrayList;
    }

    public static VideoSource parseRDVideo(JsonElement jsonElement) {
        if (jsonElement == null) {
            return null;
        }
        try {
            JsonObject asJsonObject = jsonElement.getAsJsonObject();
            String asString = asJsonObject.get("download").getAsString();
            String asString2 = asJsonObject.get("host").getAsString();
            String asString3 = asJsonObject.get("mimeType").getAsString();
            if (asString2 == null) {
                asString2 = "RD.NET";
            }
            int asInt = asJsonObject.get("streamable").getAsInt();
            long asLong = asJsonObject.get("filesize").getAsLong();
            String str = "";
            if (asLong != 0 && asLong != -1) {
                str = m.readableFileSize(asLong);
            }
            if (asInt <= 0) {
                return null;
            }
            VideoSource videoSource = new VideoSource();
            try {
                videoSource.streamUrl = asString;
                videoSource.label = "[" + asString2.toUpperCase() + "] [RD] [" + str + "]";
                videoSource.isRealDebrid = true;
                videoSource.mimeType = asString3;
                videoSource.streamable = true;
                return videoSource;
            } catch (Exception unused) {
                return videoSource;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    public static String parseRating(JsonElement jsonElement, int i2, String str) {
        JsonArray f3 = c.f("results", jsonElement);
        String str2 = "NA";
        int i7 = 0;
        while (i7 < f3.size()) {
            JsonObject asJsonObject = f3.get(i7).getAsJsonObject();
            String asString = asJsonObject.get("iso_3166_1").getAsString();
            if (asString.equalsIgnoreCase(str)) {
                JsonArray asJsonArray = asJsonObject.getAsJsonArray("release_dates");
                for (int i8 = 0; i8 < asJsonArray.size(); i8++) {
                    String asString2 = asJsonArray.get(i8).getAsJsonObject().get("certification").getAsString();
                    if (asString2 != null && !asString2.isEmpty()) {
                        return asString2;
                    }
                }
            }
            i7++;
            str2 = asString;
        }
        return !str2.isEmpty() ? str2 : "0";
    }

    public static String parseRatingSeries(JsonElement jsonElement, int i2, String str) {
        JsonArray f3 = c.f("results", jsonElement);
        String str2 = null;
        for (int i7 = 0; i7 < f3.size(); i7++) {
            JsonObject asJsonObject = f3.get(i7).getAsJsonObject();
            if (asJsonObject.get("iso_3166_1").getAsString().equalsIgnoreCase(str) && (str2 = asJsonObject.get("rating").getAsString()) != null && !str2.isEmpty()) {
                return str2;
            }
        }
        return ((str2 == null || !str2.isEmpty()) && !str.equalsIgnoreCase("us")) ? parseRatingSeries(jsonElement, i2, "us") : "0";
    }

    public static ArrayList<Movie> parseSearchMovies(JsonElement jsonElement, int i2) {
        if (jsonElement == null) {
            return null;
        }
        JsonArray f3 = c.f("results", jsonElement);
        ArrayList<Movie> arrayList = new ArrayList<>();
        for (int i7 = 0; i7 < f3.size(); i7++) {
            Movie parseMovieData = parseMovieData(f3.get(i7).getAsJsonObject(), i2);
            if (!parseMovieData.getTitle().toLowerCase(Locale.ROOT).trim().equals("gomorrah")) {
                arrayList.add(parseMovieData);
            }
        }
        return arrayList;
    }

    public static ArrayList<Movie> parseSearchMulti(JsonElement jsonElement) {
        if (jsonElement == null) {
            return null;
        }
        JsonArray f3 = c.f("results", jsonElement);
        ArrayList<Movie> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < f3.size(); i2++) {
            JsonObject asJsonObject = f3.get(i2).getAsJsonObject();
            Movie parseMovieMulti = parseMovieMulti(asJsonObject);
            if (parseMovieMulti == null || parseMovieMulti.getTitle().toLowerCase(Locale.ROOT).trim().equals("gomorrah")) {
                arrayList.addAll(parseMoviesFromKownfor(asJsonObject));
            } else {
                arrayList.add(parseMovieMulti);
            }
        }
        return arrayList;
    }

    public static ArrayList<String> parseSuggestions(JsonElement jsonElement) {
        ArrayList<String> arrayList = new ArrayList<>();
        JsonArray f3 = c.f("results", jsonElement);
        for (int i2 = 0; i2 < f3.size(); i2++) {
            JsonObject asJsonObject = f3.get(i2).getAsJsonObject();
            try {
                try {
                    arrayList.add(asJsonObject.getAsJsonObject().get("title").getAsString());
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                arrayList.add(asJsonObject.getAsJsonObject().get("name").getAsString());
            }
        }
        return arrayList;
    }

    public static ArrayList<String> parseSuggestionsGoogle(JsonElement jsonElement) {
        ArrayList<String> arrayList = new ArrayList<>();
        JsonArray asJsonArray = jsonElement.getAsJsonArray().get(1).getAsJsonArray();
        for (int i2 = 0; i2 < asJsonArray.size(); i2++) {
            arrayList.add(asJsonArray.get(i2).getAsString());
        }
        return arrayList;
    }

    public static boolean parseTorboxLoginStatus(JsonElement jsonElement) {
        try {
            JsonObject asJsonObject = jsonElement.getAsJsonObject();
            if (asJsonObject.has(FirebaseAnalytics.Param.SUCCESS)) {
                if (asJsonObject.get(FirebaseAnalytics.Param.SUCCESS).getAsBoolean()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public static String parseTorboxStreamLink(JsonElement jsonElement) {
        try {
            JsonObject asJsonObject = jsonElement.getAsJsonObject();
            if (asJsonObject.has(FirebaseAnalytics.Param.SUCCESS) && asJsonObject.get(FirebaseAnalytics.Param.SUCCESS).getAsBoolean()) {
                return asJsonObject.get(DataSchemeDataSource.SCHEME_DATA).getAsString();
            }
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public static String parseTrailer(JsonElement jsonElement) {
        if (jsonElement == null) {
            return null;
        }
        JsonArray f3 = c.f("results", jsonElement);
        for (int i2 = 0; i2 < f3.size(); i2++) {
            JsonObject asJsonObject = f3.get(i2).getAsJsonObject();
            String asString = asJsonObject.get("site").getAsString();
            String asString2 = asJsonObject.get("type").getAsString();
            if (asString != null && asString.equalsIgnoreCase("YouTube") && asString2 != null && asString2.equalsIgnoreCase("trailer")) {
                return asJsonObject.get("key").getAsString();
            }
        }
        return null;
    }

    public static ArrayList<Writer> parseWriters(JsonElement jsonElement) {
        if (jsonElement == null) {
            return null;
        }
        JsonArray f3 = c.f("crew", jsonElement);
        ArrayList<Writer> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < f3.size(); i2++) {
            JsonObject asJsonObject = f3.get(i2).getAsJsonObject();
            String asString = asJsonObject.get("name").getAsString();
            String asString2 = asJsonObject.get("job").getAsString();
            asJsonObject.get("department").getAsString();
            long asLong = asJsonObject.get("id").getAsLong();
            Writer writer = new Writer();
            writer.setName(asString);
            writer.setId(asLong);
            writer.CharacterName = asString2;
            writer.setImg_url("");
            arrayList.add(writer);
        }
        return arrayList;
    }
}
