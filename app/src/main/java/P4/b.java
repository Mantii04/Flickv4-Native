package P4;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.Gson;
import flix.com.vision.App;
import flix.com.vision.models.Movie;
import flix.com.vision.models.PreferenceEntry;
import flix.com.vision.models.PreferencesModel;
import flix.com.vision.models.adult.AdultVideo;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final Gson f2718a = new Gson();

    public static String getBackupJson() {
        PreferencesModel preferencesModel = new PreferencesModel();
        for (Map.Entry<String, ?> entry : App.getInstance().f14440s.getAll().entrySet()) {
            PreferenceEntry preferenceEntry = new PreferenceEntry();
            preferenceEntry.key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Boolean) {
                preferenceEntry.type = PreferenceEntry.Type.BOOLEAN;
                preferenceEntry.bool_value = ((Boolean) value).booleanValue();
            } else if (value instanceof String) {
                preferenceEntry.type = PreferenceEntry.Type.STRING;
                preferenceEntry.string_value = (String) value;
            } else if (value instanceof Integer) {
                preferenceEntry.type = PreferenceEntry.Type.INTEGER;
                preferenceEntry.int_value = ((Integer) value).intValue();
            }
            preferencesModel.entries.add(preferenceEntry);
        }
        preferencesModel.favorites = App.getInstance().f14439r.getFavoritesMoviesFromDb();
        preferencesModel.watching = App.getInstance().f14439r.getWatchingMoviesFromDb();
        preferencesModel.watched = App.getInstance().f14439r.getWatchedMoviesFromDb();
        preferencesModel.adultVideosHistory = App.getInstance().f14439r.getAdultHistoryFromDb();
        preferencesModel.adultVideosFavories = App.getInstance().f14439r.getAdultVideosFavoritesFromDb();
        return f2718a.toJson(preferencesModel);
    }

    public static void restoreFromJson(Context context, String str) {
        try {
            PreferencesModel preferencesModel = (PreferencesModel) f2718a.fromJson(str, PreferencesModel.class);
            if (preferencesModel == null) {
                return;
            }
            SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
            Iterator<PreferenceEntry> it = preferencesModel.entries.iterator();
            while (it.hasNext()) {
                PreferenceEntry next = it.next();
                PreferenceEntry.Type type = next.type;
                if (type != null) {
                    int i2 = a.f2717a[type.ordinal()];
                    if (i2 == 1) {
                        edit.putBoolean(next.key, next.bool_value);
                    } else if (i2 == 2) {
                        edit.putString(next.key, next.string_value);
                    } else if (i2 == 3) {
                        edit.putInt(next.key, next.int_value);
                    }
                }
            }
            edit.commit();
            Iterator<Movie> it2 = preferencesModel.favorites.iterator();
            while (it2.hasNext()) {
                App.getInstance().f14439r.addMovieFavorites(it2.next());
            }
            Iterator<Movie> it3 = preferencesModel.watched.iterator();
            while (it3.hasNext()) {
                App.getInstance().f14439r.addtoWatched(it3.next());
            }
            Iterator<Movie> it4 = preferencesModel.watching.iterator();
            while (it4.hasNext()) {
                App.getInstance().f14439r.addtoWatching(it4.next());
            }
            Iterator<AdultVideo> it5 = preferencesModel.adultVideosHistory.iterator();
            while (it5.hasNext()) {
                App.getInstance().f14439r.addAdultHistory(it5.next());
            }
            Iterator<AdultVideo> it6 = preferencesModel.adultVideosFavories.iterator();
            while (it6.hasNext()) {
                App.getInstance().f14439r.addFavoritesAdult(it6.next());
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
