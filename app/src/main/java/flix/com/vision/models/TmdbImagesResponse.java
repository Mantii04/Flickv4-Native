package flix.com.vision.models;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/* loaded from: classes2.dex */
public class TmdbImagesResponse {

    @SerializedName("logos")
    public List<TmdbLogo> logos;

    public static class TmdbLogo {

        @SerializedName("file_path")
        public String filePath;

        @SerializedName("iso_639_1")
        public String language;
    }
}
