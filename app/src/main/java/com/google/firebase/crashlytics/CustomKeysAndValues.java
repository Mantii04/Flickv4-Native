package com.google.firebase.crashlytics;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class CustomKeysAndValues {
    final Map<String, String> keysAndValues;

    public static class Builder {
        private Map<String, String> keysAndValues = new HashMap();

        public CustomKeysAndValues build() {
            return new CustomKeysAndValues(this);
        }

        public Builder putBoolean(String str, boolean z6) {
            this.keysAndValues.put(str, Boolean.toString(z6));
            return this;
        }

        public Builder putDouble(String str, double d7) {
            this.keysAndValues.put(str, Double.toString(d7));
            return this;
        }

        public Builder putFloat(String str, float f3) {
            this.keysAndValues.put(str, Float.toString(f3));
            return this;
        }

        public Builder putInt(String str, int i2) {
            this.keysAndValues.put(str, Integer.toString(i2));
            return this;
        }

        public Builder putLong(String str, long j7) {
            this.keysAndValues.put(str, Long.toString(j7));
            return this;
        }

        public Builder putString(String str, String str2) {
            this.keysAndValues.put(str, str2);
            return this;
        }
    }

    public CustomKeysAndValues(Builder builder) {
        this.keysAndValues = builder.keysAndValues;
    }
}
