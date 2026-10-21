package T4;

import android.util.Base64;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.models.C4913m;
import flix.com.vision.models.Genre;
import flix.com.vision.models.Movie;
import flix.com.vision.models.tmdb.Network;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.threeten.bp.chrono.HijrahDate;

/* loaded from: classes2.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final String f3687a = App.getInstance().f14444w;

    /* renamed from: b, reason: collision with root package name */
    public static final String f3688b = "https://t.ly/nlELZ";

    /* renamed from: c, reason: collision with root package name */
    public static final String f3689c = C4913m.f14503c;

    /* renamed from: d, reason: collision with root package name */
    public static final String f3690d = C4913m.f14502b;

    /* renamed from: e, reason: collision with root package name */
    public static final String f3691e = C4913m.f14504d;

    /* renamed from: f, reason: collision with root package name */
    public static final String f3692f = C4913m.f14506f;

    /* renamed from: g, reason: collision with root package name */
    public static final String f3693g = C4913m.f14511k;

    /* renamed from: h, reason: collision with root package name */
    public static final String f3694h = C4913m.f14512l;

    /* renamed from: i, reason: collision with root package name */
    public static final String f3695i = C4913m.f14514n;

    /* renamed from: j, reason: collision with root package name */
    public static final String f3696j = C4913m.f14507g;

    /* renamed from: k, reason: collision with root package name */
    public static final String f3697k = C4913m.f14508h;

    /* renamed from: l, reason: collision with root package name */
    public static final String f3698l = "status";

    /* renamed from: m, reason: collision with root package name */
    public static final String f3699m = C4913m.f14509i;

    /* renamed from: n, reason: collision with root package name */
    public static final String f3700n = C4913m.f14510j;

    /* renamed from: o, reason: collision with root package name */
    public static final String f3701o = C4913m.f14505e;

    /* renamed from: p, reason: collision with root package name */
    public static final String f3702p = C4913m.f14515o;

    /* renamed from: q, reason: collision with root package name */
    public static final String f3703q = C4913m.f14520t;

    /* renamed from: r, reason: collision with root package name */
    public static final String f3704r = C4913m.f14517q;

    /* renamed from: s, reason: collision with root package name */
    public static final String f3705s = C4913m.f14519s;

    /* renamed from: t, reason: collision with root package name */
    public static final String f3706t = C4913m.f14516p;

    /* renamed from: u, reason: collision with root package name */
    public static final String[] f3707u = {"119927", "232877", "486101", "109456", "91253", "62699", "88408", "92137", "62459", "99688", "102229", "33025", "155724", "106734", "66586", "80112", "56517", "123925", "88713", "33025"};

    /* renamed from: v, reason: collision with root package name */
    public static final String[] f3708v = {"70484", "61335", "85021", "92628", "119826", "63853", "70496", "75789", "70384", "76692", "87108", "113987", "72787", "649918", "91445", "124477"};

    /* renamed from: w, reason: collision with root package name */
    public static final String[] f3709w = {"66980", "83936", "135323", "109357"};

    /* renamed from: x, reason: collision with root package name */
    public static final String[] f3710x = {"rus", "french", "ita", "pl", "finnish", "esp", "latino", "ukr", "hun"};

    public static String decode(String str) {
        try {
            return new String(Base64.decode(str.trim().substring(1), 0), StandardCharsets.UTF_8);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String decode2(String str) {
        try {
            return new String(Base64.decode(str.trim().substring(0, str.length() - 1), 0), StandardCharsets.UTF_8);
        } catch (Exception unused) {
            return "";
        }
    }

    public static ArrayList<Movie> filterFlaggedContent(ArrayList<Movie> arrayList) {
        try {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(new ArrayList(Arrays.asList(f3707u)));
            arrayList2.addAll(new ArrayList(Arrays.asList(f3708v)));
            arrayList2.addAll(new ArrayList(Arrays.asList(f3709w)));
            ArrayList<Movie> arrayList3 = new ArrayList<>();
            Iterator<Movie> it = arrayList.iterator();
            while (it.hasNext()) {
                Movie next = it.next();
                if (!arrayList2.contains(String.valueOf(next.getMovieId()))) {
                    arrayList3.add(next);
                }
            }
            return arrayList3;
        } catch (Exception unused) {
            return arrayList;
        }
    }

    public static String getGenre(int i2, int i7) {
        Iterator<Genre> it = (i7 == 0 ? getMovieCategories() : getSeriesCategories()).iterator();
        while (it.hasNext()) {
            Genre next = it.next();
            if (next.id == i2) {
                return next.name;
            }
        }
        return "";
    }

    public static ArrayList<Genre> getMovieCategories() {
        ArrayList<Genre> arrayList = new ArrayList<>();
        arrayList.add(new Genre(28, "Action"));
        arrayList.add(new Genre(12, "Adventure"));
        arrayList.add(new Genre(16, "Animation"));
        arrayList.add(new Genre(35, "Comedy"));
        arrayList.add(new Genre(80, "Crime"));
        arrayList.add(new Genre(99, "Documentary"));
        arrayList.add(new Genre(18, "Drama"));
        arrayList.add(new Genre(10751, "Family"));
        arrayList.add(new Genre(14, "Fantasy"));
        arrayList.add(new Genre(36, "History"));
        arrayList.add(new Genre(27, "Horror"));
        arrayList.add(new Genre(10402, "Music"));
        arrayList.add(new Genre(9648, "Mystery"));
        arrayList.add(new Genre(10749, "Romance"));
        arrayList.add(new Genre(878, "Science Fiction"));
        arrayList.add(new Genre(10770, "TV Movie"));
        arrayList.add(new Genre(53, "Thriller"));
        arrayList.add(new Genre(10752, "War"));
        arrayList.add(new Genre(37, "Western"));
        return arrayList;
    }

    public static ArrayList<Network> getNetworks() {
        ArrayList<Network> arrayList = new ArrayList<>();
        arrayList.add(new Network(213, "Netflix", null, R.drawable.netflix));
        arrayList.add(new Network(2739, "Disney+", null, R.drawable.disney));
        arrayList.add(new Network(1024, "Prime Video", null, R.drawable.prime));
        arrayList.add(new Network(2552, "Apple TV+", null, R.drawable.appletvplus));
        arrayList.add(new Network(4330, "Paramount+", null, R.drawable.paramount));
        arrayList.add(new Network(49, "HBO Max", null, R.drawable.hbomax));
        arrayList.add(new Network(453, "Hulu", null, R.drawable.hulu));
        arrayList.add(new Network(318, "Starz", null, R.drawable.starz));
        arrayList.add(new Network(999, "Bollywood", null, R.drawable.bollywood_logo));
        arrayList.add(new Network(4353, "Discovery+", null, R.drawable.discovery_logo));
        arrayList.add(new Network(2, "ABC", null, R.drawable.abc_image));
        arrayList.add(new Network(16, "CBS", null, R.drawable.cbs_image));
        arrayList.add(new Network(174, "AMC", null, R.drawable.amc_image));
        arrayList.add(new Network(3353, "Peacock", null, R.drawable.peacock));
        arrayList.add(new Network(HijrahDate.MAX_VALUE_OF_ERA, "Marvel Studios", null, R.drawable.marvel));
        arrayList.add(new Network(3343, "BET+", null, R.drawable.bet_plus_2));
        arrayList.add(new Network(4025, "BritBox", null, R.drawable.brit_box));
        arrayList.add(new Network(6219, "MGM+", null, R.drawable.mgm_plus_logo));
        return arrayList;
    }

    public static ArrayList<Genre> getSeriesCategories() {
        ArrayList<Genre> arrayList = new ArrayList<>();
        arrayList.add(new Genre(10759, "Action & Adventure"));
        arrayList.add(new Genre(16, "Animation"));
        arrayList.add(new Genre(35, "Comedy"));
        arrayList.add(new Genre(80, "Crime"));
        arrayList.add(new Genre(99, "Documentary"));
        arrayList.add(new Genre(18, "Drama"));
        arrayList.add(new Genre(10751, "Family"));
        arrayList.add(new Genre(10762, "Kids"));
        arrayList.add(new Genre(9648, "Mystery"));
        arrayList.add(new Genre(10763, "News"));
        arrayList.add(new Genre(10764, "Reality"));
        arrayList.add(new Genre(10765, "Sci-Fi & Fantasy"));
        arrayList.add(new Genre(10766, "Soap"));
        arrayList.add(new Genre(10767, "Talk"));
        arrayList.add(new Genre(10768, "War & Politics"));
        arrayList.add(new Genre(37, "Western"));
        return arrayList;
    }

    public static String readJSON(InputStream inputStream) {
        try {
            String str = "";
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return str;
                }
                str = str + readLine;
            }
        } catch (IOException unused) {
            return null;
        }
    }
}
