package flix.com.vision.models;

import flix.com.vision.models.adult.AdultVideo;
import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class PreferencesModel implements Serializable {
    private static final long serialVersionUID = 125;
    public ArrayList<PreferenceEntry> entries = new ArrayList<>();
    public ArrayList<Movie> favorites = new ArrayList<>();
    public ArrayList<Movie> watched = new ArrayList<>();
    public ArrayList<Movie> watching = new ArrayList<>();
    public ArrayList<AdultVideo> adultVideosHistory = new ArrayList<>();
    public ArrayList<AdultVideo> adultVideosFavories = new ArrayList<>();
}
