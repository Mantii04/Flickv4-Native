package flix.com.vision.models;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class PreferenceEntry implements Serializable {
    public boolean bool_value;
    public int int_value;
    public String key;
    public String string_value;
    public Type type;

    public enum Type {
        BOOLEAN,
        STRING,
        INTEGER
    }
}
