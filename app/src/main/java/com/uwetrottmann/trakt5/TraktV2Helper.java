package com.uwetrottmann.trakt5;

import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.uwetrottmann.trakt5.enums.Audio;
import com.uwetrottmann.trakt5.enums.AudioChannels;
import com.uwetrottmann.trakt5.enums.Hdr;
import com.uwetrottmann.trakt5.enums.MediaType;
import com.uwetrottmann.trakt5.enums.ProgressLastActivity;
import com.uwetrottmann.trakt5.enums.Rating;
import com.uwetrottmann.trakt5.enums.Resolution;
import com.uwetrottmann.trakt5.enums.Status;
import java.lang.reflect.Type;
import org.threeten.bp.LocalDate;
import org.threeten.bp.OffsetDateTime;

/* loaded from: classes2.dex */
public class TraktV2Helper {
    public static GsonBuilder getGsonBuilder() {
        GsonBuilder gsonBuilder = new GsonBuilder();
        final int i2 = 0;
        gsonBuilder.registerTypeAdapter(OffsetDateTime.class, new JsonDeserializer() { // from class: com.uwetrottmann.trakt5.a
            @Override // com.google.gson.JsonDeserializer
            public final Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
                OffsetDateTime lambda$getGsonBuilder$0;
                Rating lambda$getGsonBuilder$3;
                Status lambda$getGsonBuilder$5;
                ProgressLastActivity lambda$getGsonBuilder$6;
                MediaType lambda$getGsonBuilder$8;
                Resolution lambda$getGsonBuilder$10;
                Hdr lambda$getGsonBuilder$12;
                Audio lambda$getGsonBuilder$14;
                AudioChannels lambda$getGsonBuilder$16;
                LocalDate lambda$getGsonBuilder$2;
                switch (i2) {
                    case 0:
                        lambda$getGsonBuilder$0 = TraktV2Helper.lambda$getGsonBuilder$0(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$0;
                    case 1:
                        lambda$getGsonBuilder$3 = TraktV2Helper.lambda$getGsonBuilder$3(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$3;
                    case 2:
                        lambda$getGsonBuilder$5 = TraktV2Helper.lambda$getGsonBuilder$5(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$5;
                    case 3:
                        lambda$getGsonBuilder$6 = TraktV2Helper.lambda$getGsonBuilder$6(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$6;
                    case 4:
                        lambda$getGsonBuilder$8 = TraktV2Helper.lambda$getGsonBuilder$8(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$8;
                    case 5:
                        lambda$getGsonBuilder$10 = TraktV2Helper.lambda$getGsonBuilder$10(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$10;
                    case 6:
                        lambda$getGsonBuilder$12 = TraktV2Helper.lambda$getGsonBuilder$12(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$12;
                    case 7:
                        lambda$getGsonBuilder$14 = TraktV2Helper.lambda$getGsonBuilder$14(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$14;
                    case 8:
                        lambda$getGsonBuilder$16 = TraktV2Helper.lambda$getGsonBuilder$16(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$16;
                    default:
                        lambda$getGsonBuilder$2 = TraktV2Helper.lambda$getGsonBuilder$2(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$2;
                }
            }
        });
        final int i7 = 6;
        gsonBuilder.registerTypeAdapter(OffsetDateTime.class, new JsonSerializer() { // from class: com.uwetrottmann.trakt5.b
            @Override // com.google.gson.JsonSerializer
            public final JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext) {
                JsonElement lambda$getGsonBuilder$4;
                JsonElement lambda$getGsonBuilder$7;
                JsonElement lambda$getGsonBuilder$9;
                JsonElement lambda$getGsonBuilder$11;
                JsonElement lambda$getGsonBuilder$13;
                JsonElement lambda$getGsonBuilder$15;
                JsonElement lambda$getGsonBuilder$1;
                switch (i7) {
                    case 0:
                        lambda$getGsonBuilder$4 = TraktV2Helper.lambda$getGsonBuilder$4((Rating) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$4;
                    case 1:
                        lambda$getGsonBuilder$7 = TraktV2Helper.lambda$getGsonBuilder$7((MediaType) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$7;
                    case 2:
                        lambda$getGsonBuilder$9 = TraktV2Helper.lambda$getGsonBuilder$9((Resolution) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$9;
                    case 3:
                        lambda$getGsonBuilder$11 = TraktV2Helper.lambda$getGsonBuilder$11((Hdr) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$11;
                    case 4:
                        lambda$getGsonBuilder$13 = TraktV2Helper.lambda$getGsonBuilder$13((Audio) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$13;
                    case 5:
                        lambda$getGsonBuilder$15 = TraktV2Helper.lambda$getGsonBuilder$15((AudioChannels) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$15;
                    default:
                        lambda$getGsonBuilder$1 = TraktV2Helper.lambda$getGsonBuilder$1((OffsetDateTime) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$1;
                }
            }
        });
        final int i8 = 9;
        gsonBuilder.registerTypeAdapter(LocalDate.class, new JsonDeserializer() { // from class: com.uwetrottmann.trakt5.a
            @Override // com.google.gson.JsonDeserializer
            public final Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
                OffsetDateTime lambda$getGsonBuilder$0;
                Rating lambda$getGsonBuilder$3;
                Status lambda$getGsonBuilder$5;
                ProgressLastActivity lambda$getGsonBuilder$6;
                MediaType lambda$getGsonBuilder$8;
                Resolution lambda$getGsonBuilder$10;
                Hdr lambda$getGsonBuilder$12;
                Audio lambda$getGsonBuilder$14;
                AudioChannels lambda$getGsonBuilder$16;
                LocalDate lambda$getGsonBuilder$2;
                switch (i8) {
                    case 0:
                        lambda$getGsonBuilder$0 = TraktV2Helper.lambda$getGsonBuilder$0(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$0;
                    case 1:
                        lambda$getGsonBuilder$3 = TraktV2Helper.lambda$getGsonBuilder$3(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$3;
                    case 2:
                        lambda$getGsonBuilder$5 = TraktV2Helper.lambda$getGsonBuilder$5(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$5;
                    case 3:
                        lambda$getGsonBuilder$6 = TraktV2Helper.lambda$getGsonBuilder$6(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$6;
                    case 4:
                        lambda$getGsonBuilder$8 = TraktV2Helper.lambda$getGsonBuilder$8(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$8;
                    case 5:
                        lambda$getGsonBuilder$10 = TraktV2Helper.lambda$getGsonBuilder$10(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$10;
                    case 6:
                        lambda$getGsonBuilder$12 = TraktV2Helper.lambda$getGsonBuilder$12(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$12;
                    case 7:
                        lambda$getGsonBuilder$14 = TraktV2Helper.lambda$getGsonBuilder$14(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$14;
                    case 8:
                        lambda$getGsonBuilder$16 = TraktV2Helper.lambda$getGsonBuilder$16(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$16;
                    default:
                        lambda$getGsonBuilder$2 = TraktV2Helper.lambda$getGsonBuilder$2(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$2;
                }
            }
        });
        final int i9 = 1;
        gsonBuilder.registerTypeAdapter(Rating.class, new JsonDeserializer() { // from class: com.uwetrottmann.trakt5.a
            @Override // com.google.gson.JsonDeserializer
            public final Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
                OffsetDateTime lambda$getGsonBuilder$0;
                Rating lambda$getGsonBuilder$3;
                Status lambda$getGsonBuilder$5;
                ProgressLastActivity lambda$getGsonBuilder$6;
                MediaType lambda$getGsonBuilder$8;
                Resolution lambda$getGsonBuilder$10;
                Hdr lambda$getGsonBuilder$12;
                Audio lambda$getGsonBuilder$14;
                AudioChannels lambda$getGsonBuilder$16;
                LocalDate lambda$getGsonBuilder$2;
                switch (i9) {
                    case 0:
                        lambda$getGsonBuilder$0 = TraktV2Helper.lambda$getGsonBuilder$0(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$0;
                    case 1:
                        lambda$getGsonBuilder$3 = TraktV2Helper.lambda$getGsonBuilder$3(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$3;
                    case 2:
                        lambda$getGsonBuilder$5 = TraktV2Helper.lambda$getGsonBuilder$5(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$5;
                    case 3:
                        lambda$getGsonBuilder$6 = TraktV2Helper.lambda$getGsonBuilder$6(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$6;
                    case 4:
                        lambda$getGsonBuilder$8 = TraktV2Helper.lambda$getGsonBuilder$8(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$8;
                    case 5:
                        lambda$getGsonBuilder$10 = TraktV2Helper.lambda$getGsonBuilder$10(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$10;
                    case 6:
                        lambda$getGsonBuilder$12 = TraktV2Helper.lambda$getGsonBuilder$12(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$12;
                    case 7:
                        lambda$getGsonBuilder$14 = TraktV2Helper.lambda$getGsonBuilder$14(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$14;
                    case 8:
                        lambda$getGsonBuilder$16 = TraktV2Helper.lambda$getGsonBuilder$16(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$16;
                    default:
                        lambda$getGsonBuilder$2 = TraktV2Helper.lambda$getGsonBuilder$2(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$2;
                }
            }
        });
        final int i10 = 0;
        gsonBuilder.registerTypeAdapter(Rating.class, new JsonSerializer() { // from class: com.uwetrottmann.trakt5.b
            @Override // com.google.gson.JsonSerializer
            public final JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext) {
                JsonElement lambda$getGsonBuilder$4;
                JsonElement lambda$getGsonBuilder$7;
                JsonElement lambda$getGsonBuilder$9;
                JsonElement lambda$getGsonBuilder$11;
                JsonElement lambda$getGsonBuilder$13;
                JsonElement lambda$getGsonBuilder$15;
                JsonElement lambda$getGsonBuilder$1;
                switch (i10) {
                    case 0:
                        lambda$getGsonBuilder$4 = TraktV2Helper.lambda$getGsonBuilder$4((Rating) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$4;
                    case 1:
                        lambda$getGsonBuilder$7 = TraktV2Helper.lambda$getGsonBuilder$7((MediaType) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$7;
                    case 2:
                        lambda$getGsonBuilder$9 = TraktV2Helper.lambda$getGsonBuilder$9((Resolution) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$9;
                    case 3:
                        lambda$getGsonBuilder$11 = TraktV2Helper.lambda$getGsonBuilder$11((Hdr) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$11;
                    case 4:
                        lambda$getGsonBuilder$13 = TraktV2Helper.lambda$getGsonBuilder$13((Audio) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$13;
                    case 5:
                        lambda$getGsonBuilder$15 = TraktV2Helper.lambda$getGsonBuilder$15((AudioChannels) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$15;
                    default:
                        lambda$getGsonBuilder$1 = TraktV2Helper.lambda$getGsonBuilder$1((OffsetDateTime) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$1;
                }
            }
        });
        final int i11 = 2;
        gsonBuilder.registerTypeAdapter(Status.class, new JsonDeserializer() { // from class: com.uwetrottmann.trakt5.a
            @Override // com.google.gson.JsonDeserializer
            public final Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
                OffsetDateTime lambda$getGsonBuilder$0;
                Rating lambda$getGsonBuilder$3;
                Status lambda$getGsonBuilder$5;
                ProgressLastActivity lambda$getGsonBuilder$6;
                MediaType lambda$getGsonBuilder$8;
                Resolution lambda$getGsonBuilder$10;
                Hdr lambda$getGsonBuilder$12;
                Audio lambda$getGsonBuilder$14;
                AudioChannels lambda$getGsonBuilder$16;
                LocalDate lambda$getGsonBuilder$2;
                switch (i11) {
                    case 0:
                        lambda$getGsonBuilder$0 = TraktV2Helper.lambda$getGsonBuilder$0(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$0;
                    case 1:
                        lambda$getGsonBuilder$3 = TraktV2Helper.lambda$getGsonBuilder$3(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$3;
                    case 2:
                        lambda$getGsonBuilder$5 = TraktV2Helper.lambda$getGsonBuilder$5(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$5;
                    case 3:
                        lambda$getGsonBuilder$6 = TraktV2Helper.lambda$getGsonBuilder$6(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$6;
                    case 4:
                        lambda$getGsonBuilder$8 = TraktV2Helper.lambda$getGsonBuilder$8(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$8;
                    case 5:
                        lambda$getGsonBuilder$10 = TraktV2Helper.lambda$getGsonBuilder$10(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$10;
                    case 6:
                        lambda$getGsonBuilder$12 = TraktV2Helper.lambda$getGsonBuilder$12(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$12;
                    case 7:
                        lambda$getGsonBuilder$14 = TraktV2Helper.lambda$getGsonBuilder$14(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$14;
                    case 8:
                        lambda$getGsonBuilder$16 = TraktV2Helper.lambda$getGsonBuilder$16(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$16;
                    default:
                        lambda$getGsonBuilder$2 = TraktV2Helper.lambda$getGsonBuilder$2(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$2;
                }
            }
        });
        final int i12 = 3;
        gsonBuilder.registerTypeAdapter(ProgressLastActivity.class, new JsonDeserializer() { // from class: com.uwetrottmann.trakt5.a
            @Override // com.google.gson.JsonDeserializer
            public final Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
                OffsetDateTime lambda$getGsonBuilder$0;
                Rating lambda$getGsonBuilder$3;
                Status lambda$getGsonBuilder$5;
                ProgressLastActivity lambda$getGsonBuilder$6;
                MediaType lambda$getGsonBuilder$8;
                Resolution lambda$getGsonBuilder$10;
                Hdr lambda$getGsonBuilder$12;
                Audio lambda$getGsonBuilder$14;
                AudioChannels lambda$getGsonBuilder$16;
                LocalDate lambda$getGsonBuilder$2;
                switch (i12) {
                    case 0:
                        lambda$getGsonBuilder$0 = TraktV2Helper.lambda$getGsonBuilder$0(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$0;
                    case 1:
                        lambda$getGsonBuilder$3 = TraktV2Helper.lambda$getGsonBuilder$3(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$3;
                    case 2:
                        lambda$getGsonBuilder$5 = TraktV2Helper.lambda$getGsonBuilder$5(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$5;
                    case 3:
                        lambda$getGsonBuilder$6 = TraktV2Helper.lambda$getGsonBuilder$6(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$6;
                    case 4:
                        lambda$getGsonBuilder$8 = TraktV2Helper.lambda$getGsonBuilder$8(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$8;
                    case 5:
                        lambda$getGsonBuilder$10 = TraktV2Helper.lambda$getGsonBuilder$10(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$10;
                    case 6:
                        lambda$getGsonBuilder$12 = TraktV2Helper.lambda$getGsonBuilder$12(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$12;
                    case 7:
                        lambda$getGsonBuilder$14 = TraktV2Helper.lambda$getGsonBuilder$14(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$14;
                    case 8:
                        lambda$getGsonBuilder$16 = TraktV2Helper.lambda$getGsonBuilder$16(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$16;
                    default:
                        lambda$getGsonBuilder$2 = TraktV2Helper.lambda$getGsonBuilder$2(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$2;
                }
            }
        });
        final int i13 = 1;
        gsonBuilder.registerTypeAdapter(MediaType.class, new JsonSerializer() { // from class: com.uwetrottmann.trakt5.b
            @Override // com.google.gson.JsonSerializer
            public final JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext) {
                JsonElement lambda$getGsonBuilder$4;
                JsonElement lambda$getGsonBuilder$7;
                JsonElement lambda$getGsonBuilder$9;
                JsonElement lambda$getGsonBuilder$11;
                JsonElement lambda$getGsonBuilder$13;
                JsonElement lambda$getGsonBuilder$15;
                JsonElement lambda$getGsonBuilder$1;
                switch (i13) {
                    case 0:
                        lambda$getGsonBuilder$4 = TraktV2Helper.lambda$getGsonBuilder$4((Rating) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$4;
                    case 1:
                        lambda$getGsonBuilder$7 = TraktV2Helper.lambda$getGsonBuilder$7((MediaType) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$7;
                    case 2:
                        lambda$getGsonBuilder$9 = TraktV2Helper.lambda$getGsonBuilder$9((Resolution) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$9;
                    case 3:
                        lambda$getGsonBuilder$11 = TraktV2Helper.lambda$getGsonBuilder$11((Hdr) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$11;
                    case 4:
                        lambda$getGsonBuilder$13 = TraktV2Helper.lambda$getGsonBuilder$13((Audio) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$13;
                    case 5:
                        lambda$getGsonBuilder$15 = TraktV2Helper.lambda$getGsonBuilder$15((AudioChannels) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$15;
                    default:
                        lambda$getGsonBuilder$1 = TraktV2Helper.lambda$getGsonBuilder$1((OffsetDateTime) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$1;
                }
            }
        });
        final int i14 = 4;
        gsonBuilder.registerTypeAdapter(MediaType.class, new JsonDeserializer() { // from class: com.uwetrottmann.trakt5.a
            @Override // com.google.gson.JsonDeserializer
            public final Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
                OffsetDateTime lambda$getGsonBuilder$0;
                Rating lambda$getGsonBuilder$3;
                Status lambda$getGsonBuilder$5;
                ProgressLastActivity lambda$getGsonBuilder$6;
                MediaType lambda$getGsonBuilder$8;
                Resolution lambda$getGsonBuilder$10;
                Hdr lambda$getGsonBuilder$12;
                Audio lambda$getGsonBuilder$14;
                AudioChannels lambda$getGsonBuilder$16;
                LocalDate lambda$getGsonBuilder$2;
                switch (i14) {
                    case 0:
                        lambda$getGsonBuilder$0 = TraktV2Helper.lambda$getGsonBuilder$0(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$0;
                    case 1:
                        lambda$getGsonBuilder$3 = TraktV2Helper.lambda$getGsonBuilder$3(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$3;
                    case 2:
                        lambda$getGsonBuilder$5 = TraktV2Helper.lambda$getGsonBuilder$5(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$5;
                    case 3:
                        lambda$getGsonBuilder$6 = TraktV2Helper.lambda$getGsonBuilder$6(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$6;
                    case 4:
                        lambda$getGsonBuilder$8 = TraktV2Helper.lambda$getGsonBuilder$8(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$8;
                    case 5:
                        lambda$getGsonBuilder$10 = TraktV2Helper.lambda$getGsonBuilder$10(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$10;
                    case 6:
                        lambda$getGsonBuilder$12 = TraktV2Helper.lambda$getGsonBuilder$12(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$12;
                    case 7:
                        lambda$getGsonBuilder$14 = TraktV2Helper.lambda$getGsonBuilder$14(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$14;
                    case 8:
                        lambda$getGsonBuilder$16 = TraktV2Helper.lambda$getGsonBuilder$16(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$16;
                    default:
                        lambda$getGsonBuilder$2 = TraktV2Helper.lambda$getGsonBuilder$2(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$2;
                }
            }
        });
        final int i15 = 2;
        gsonBuilder.registerTypeAdapter(Resolution.class, new JsonSerializer() { // from class: com.uwetrottmann.trakt5.b
            @Override // com.google.gson.JsonSerializer
            public final JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext) {
                JsonElement lambda$getGsonBuilder$4;
                JsonElement lambda$getGsonBuilder$7;
                JsonElement lambda$getGsonBuilder$9;
                JsonElement lambda$getGsonBuilder$11;
                JsonElement lambda$getGsonBuilder$13;
                JsonElement lambda$getGsonBuilder$15;
                JsonElement lambda$getGsonBuilder$1;
                switch (i15) {
                    case 0:
                        lambda$getGsonBuilder$4 = TraktV2Helper.lambda$getGsonBuilder$4((Rating) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$4;
                    case 1:
                        lambda$getGsonBuilder$7 = TraktV2Helper.lambda$getGsonBuilder$7((MediaType) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$7;
                    case 2:
                        lambda$getGsonBuilder$9 = TraktV2Helper.lambda$getGsonBuilder$9((Resolution) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$9;
                    case 3:
                        lambda$getGsonBuilder$11 = TraktV2Helper.lambda$getGsonBuilder$11((Hdr) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$11;
                    case 4:
                        lambda$getGsonBuilder$13 = TraktV2Helper.lambda$getGsonBuilder$13((Audio) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$13;
                    case 5:
                        lambda$getGsonBuilder$15 = TraktV2Helper.lambda$getGsonBuilder$15((AudioChannels) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$15;
                    default:
                        lambda$getGsonBuilder$1 = TraktV2Helper.lambda$getGsonBuilder$1((OffsetDateTime) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$1;
                }
            }
        });
        final int i16 = 5;
        gsonBuilder.registerTypeAdapter(Resolution.class, new JsonDeserializer() { // from class: com.uwetrottmann.trakt5.a
            @Override // com.google.gson.JsonDeserializer
            public final Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
                OffsetDateTime lambda$getGsonBuilder$0;
                Rating lambda$getGsonBuilder$3;
                Status lambda$getGsonBuilder$5;
                ProgressLastActivity lambda$getGsonBuilder$6;
                MediaType lambda$getGsonBuilder$8;
                Resolution lambda$getGsonBuilder$10;
                Hdr lambda$getGsonBuilder$12;
                Audio lambda$getGsonBuilder$14;
                AudioChannels lambda$getGsonBuilder$16;
                LocalDate lambda$getGsonBuilder$2;
                switch (i16) {
                    case 0:
                        lambda$getGsonBuilder$0 = TraktV2Helper.lambda$getGsonBuilder$0(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$0;
                    case 1:
                        lambda$getGsonBuilder$3 = TraktV2Helper.lambda$getGsonBuilder$3(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$3;
                    case 2:
                        lambda$getGsonBuilder$5 = TraktV2Helper.lambda$getGsonBuilder$5(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$5;
                    case 3:
                        lambda$getGsonBuilder$6 = TraktV2Helper.lambda$getGsonBuilder$6(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$6;
                    case 4:
                        lambda$getGsonBuilder$8 = TraktV2Helper.lambda$getGsonBuilder$8(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$8;
                    case 5:
                        lambda$getGsonBuilder$10 = TraktV2Helper.lambda$getGsonBuilder$10(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$10;
                    case 6:
                        lambda$getGsonBuilder$12 = TraktV2Helper.lambda$getGsonBuilder$12(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$12;
                    case 7:
                        lambda$getGsonBuilder$14 = TraktV2Helper.lambda$getGsonBuilder$14(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$14;
                    case 8:
                        lambda$getGsonBuilder$16 = TraktV2Helper.lambda$getGsonBuilder$16(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$16;
                    default:
                        lambda$getGsonBuilder$2 = TraktV2Helper.lambda$getGsonBuilder$2(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$2;
                }
            }
        });
        final int i17 = 3;
        gsonBuilder.registerTypeAdapter(Hdr.class, new JsonSerializer() { // from class: com.uwetrottmann.trakt5.b
            @Override // com.google.gson.JsonSerializer
            public final JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext) {
                JsonElement lambda$getGsonBuilder$4;
                JsonElement lambda$getGsonBuilder$7;
                JsonElement lambda$getGsonBuilder$9;
                JsonElement lambda$getGsonBuilder$11;
                JsonElement lambda$getGsonBuilder$13;
                JsonElement lambda$getGsonBuilder$15;
                JsonElement lambda$getGsonBuilder$1;
                switch (i17) {
                    case 0:
                        lambda$getGsonBuilder$4 = TraktV2Helper.lambda$getGsonBuilder$4((Rating) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$4;
                    case 1:
                        lambda$getGsonBuilder$7 = TraktV2Helper.lambda$getGsonBuilder$7((MediaType) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$7;
                    case 2:
                        lambda$getGsonBuilder$9 = TraktV2Helper.lambda$getGsonBuilder$9((Resolution) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$9;
                    case 3:
                        lambda$getGsonBuilder$11 = TraktV2Helper.lambda$getGsonBuilder$11((Hdr) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$11;
                    case 4:
                        lambda$getGsonBuilder$13 = TraktV2Helper.lambda$getGsonBuilder$13((Audio) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$13;
                    case 5:
                        lambda$getGsonBuilder$15 = TraktV2Helper.lambda$getGsonBuilder$15((AudioChannels) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$15;
                    default:
                        lambda$getGsonBuilder$1 = TraktV2Helper.lambda$getGsonBuilder$1((OffsetDateTime) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$1;
                }
            }
        });
        final int i18 = 6;
        gsonBuilder.registerTypeAdapter(Hdr.class, new JsonDeserializer() { // from class: com.uwetrottmann.trakt5.a
            @Override // com.google.gson.JsonDeserializer
            public final Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
                OffsetDateTime lambda$getGsonBuilder$0;
                Rating lambda$getGsonBuilder$3;
                Status lambda$getGsonBuilder$5;
                ProgressLastActivity lambda$getGsonBuilder$6;
                MediaType lambda$getGsonBuilder$8;
                Resolution lambda$getGsonBuilder$10;
                Hdr lambda$getGsonBuilder$12;
                Audio lambda$getGsonBuilder$14;
                AudioChannels lambda$getGsonBuilder$16;
                LocalDate lambda$getGsonBuilder$2;
                switch (i18) {
                    case 0:
                        lambda$getGsonBuilder$0 = TraktV2Helper.lambda$getGsonBuilder$0(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$0;
                    case 1:
                        lambda$getGsonBuilder$3 = TraktV2Helper.lambda$getGsonBuilder$3(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$3;
                    case 2:
                        lambda$getGsonBuilder$5 = TraktV2Helper.lambda$getGsonBuilder$5(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$5;
                    case 3:
                        lambda$getGsonBuilder$6 = TraktV2Helper.lambda$getGsonBuilder$6(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$6;
                    case 4:
                        lambda$getGsonBuilder$8 = TraktV2Helper.lambda$getGsonBuilder$8(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$8;
                    case 5:
                        lambda$getGsonBuilder$10 = TraktV2Helper.lambda$getGsonBuilder$10(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$10;
                    case 6:
                        lambda$getGsonBuilder$12 = TraktV2Helper.lambda$getGsonBuilder$12(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$12;
                    case 7:
                        lambda$getGsonBuilder$14 = TraktV2Helper.lambda$getGsonBuilder$14(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$14;
                    case 8:
                        lambda$getGsonBuilder$16 = TraktV2Helper.lambda$getGsonBuilder$16(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$16;
                    default:
                        lambda$getGsonBuilder$2 = TraktV2Helper.lambda$getGsonBuilder$2(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$2;
                }
            }
        });
        final int i19 = 4;
        gsonBuilder.registerTypeAdapter(Audio.class, new JsonSerializer() { // from class: com.uwetrottmann.trakt5.b
            @Override // com.google.gson.JsonSerializer
            public final JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext) {
                JsonElement lambda$getGsonBuilder$4;
                JsonElement lambda$getGsonBuilder$7;
                JsonElement lambda$getGsonBuilder$9;
                JsonElement lambda$getGsonBuilder$11;
                JsonElement lambda$getGsonBuilder$13;
                JsonElement lambda$getGsonBuilder$15;
                JsonElement lambda$getGsonBuilder$1;
                switch (i19) {
                    case 0:
                        lambda$getGsonBuilder$4 = TraktV2Helper.lambda$getGsonBuilder$4((Rating) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$4;
                    case 1:
                        lambda$getGsonBuilder$7 = TraktV2Helper.lambda$getGsonBuilder$7((MediaType) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$7;
                    case 2:
                        lambda$getGsonBuilder$9 = TraktV2Helper.lambda$getGsonBuilder$9((Resolution) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$9;
                    case 3:
                        lambda$getGsonBuilder$11 = TraktV2Helper.lambda$getGsonBuilder$11((Hdr) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$11;
                    case 4:
                        lambda$getGsonBuilder$13 = TraktV2Helper.lambda$getGsonBuilder$13((Audio) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$13;
                    case 5:
                        lambda$getGsonBuilder$15 = TraktV2Helper.lambda$getGsonBuilder$15((AudioChannels) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$15;
                    default:
                        lambda$getGsonBuilder$1 = TraktV2Helper.lambda$getGsonBuilder$1((OffsetDateTime) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$1;
                }
            }
        });
        final int i20 = 7;
        gsonBuilder.registerTypeAdapter(Audio.class, new JsonDeserializer() { // from class: com.uwetrottmann.trakt5.a
            @Override // com.google.gson.JsonDeserializer
            public final Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
                OffsetDateTime lambda$getGsonBuilder$0;
                Rating lambda$getGsonBuilder$3;
                Status lambda$getGsonBuilder$5;
                ProgressLastActivity lambda$getGsonBuilder$6;
                MediaType lambda$getGsonBuilder$8;
                Resolution lambda$getGsonBuilder$10;
                Hdr lambda$getGsonBuilder$12;
                Audio lambda$getGsonBuilder$14;
                AudioChannels lambda$getGsonBuilder$16;
                LocalDate lambda$getGsonBuilder$2;
                switch (i20) {
                    case 0:
                        lambda$getGsonBuilder$0 = TraktV2Helper.lambda$getGsonBuilder$0(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$0;
                    case 1:
                        lambda$getGsonBuilder$3 = TraktV2Helper.lambda$getGsonBuilder$3(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$3;
                    case 2:
                        lambda$getGsonBuilder$5 = TraktV2Helper.lambda$getGsonBuilder$5(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$5;
                    case 3:
                        lambda$getGsonBuilder$6 = TraktV2Helper.lambda$getGsonBuilder$6(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$6;
                    case 4:
                        lambda$getGsonBuilder$8 = TraktV2Helper.lambda$getGsonBuilder$8(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$8;
                    case 5:
                        lambda$getGsonBuilder$10 = TraktV2Helper.lambda$getGsonBuilder$10(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$10;
                    case 6:
                        lambda$getGsonBuilder$12 = TraktV2Helper.lambda$getGsonBuilder$12(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$12;
                    case 7:
                        lambda$getGsonBuilder$14 = TraktV2Helper.lambda$getGsonBuilder$14(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$14;
                    case 8:
                        lambda$getGsonBuilder$16 = TraktV2Helper.lambda$getGsonBuilder$16(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$16;
                    default:
                        lambda$getGsonBuilder$2 = TraktV2Helper.lambda$getGsonBuilder$2(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$2;
                }
            }
        });
        final int i21 = 5;
        gsonBuilder.registerTypeAdapter(AudioChannels.class, new JsonSerializer() { // from class: com.uwetrottmann.trakt5.b
            @Override // com.google.gson.JsonSerializer
            public final JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext) {
                JsonElement lambda$getGsonBuilder$4;
                JsonElement lambda$getGsonBuilder$7;
                JsonElement lambda$getGsonBuilder$9;
                JsonElement lambda$getGsonBuilder$11;
                JsonElement lambda$getGsonBuilder$13;
                JsonElement lambda$getGsonBuilder$15;
                JsonElement lambda$getGsonBuilder$1;
                switch (i21) {
                    case 0:
                        lambda$getGsonBuilder$4 = TraktV2Helper.lambda$getGsonBuilder$4((Rating) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$4;
                    case 1:
                        lambda$getGsonBuilder$7 = TraktV2Helper.lambda$getGsonBuilder$7((MediaType) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$7;
                    case 2:
                        lambda$getGsonBuilder$9 = TraktV2Helper.lambda$getGsonBuilder$9((Resolution) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$9;
                    case 3:
                        lambda$getGsonBuilder$11 = TraktV2Helper.lambda$getGsonBuilder$11((Hdr) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$11;
                    case 4:
                        lambda$getGsonBuilder$13 = TraktV2Helper.lambda$getGsonBuilder$13((Audio) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$13;
                    case 5:
                        lambda$getGsonBuilder$15 = TraktV2Helper.lambda$getGsonBuilder$15((AudioChannels) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$15;
                    default:
                        lambda$getGsonBuilder$1 = TraktV2Helper.lambda$getGsonBuilder$1((OffsetDateTime) obj, type, jsonSerializationContext);
                        return lambda$getGsonBuilder$1;
                }
            }
        });
        final int i22 = 8;
        gsonBuilder.registerTypeAdapter(AudioChannels.class, new JsonDeserializer() { // from class: com.uwetrottmann.trakt5.a
            @Override // com.google.gson.JsonDeserializer
            public final Object deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) {
                OffsetDateTime lambda$getGsonBuilder$0;
                Rating lambda$getGsonBuilder$3;
                Status lambda$getGsonBuilder$5;
                ProgressLastActivity lambda$getGsonBuilder$6;
                MediaType lambda$getGsonBuilder$8;
                Resolution lambda$getGsonBuilder$10;
                Hdr lambda$getGsonBuilder$12;
                Audio lambda$getGsonBuilder$14;
                AudioChannels lambda$getGsonBuilder$16;
                LocalDate lambda$getGsonBuilder$2;
                switch (i22) {
                    case 0:
                        lambda$getGsonBuilder$0 = TraktV2Helper.lambda$getGsonBuilder$0(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$0;
                    case 1:
                        lambda$getGsonBuilder$3 = TraktV2Helper.lambda$getGsonBuilder$3(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$3;
                    case 2:
                        lambda$getGsonBuilder$5 = TraktV2Helper.lambda$getGsonBuilder$5(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$5;
                    case 3:
                        lambda$getGsonBuilder$6 = TraktV2Helper.lambda$getGsonBuilder$6(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$6;
                    case 4:
                        lambda$getGsonBuilder$8 = TraktV2Helper.lambda$getGsonBuilder$8(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$8;
                    case 5:
                        lambda$getGsonBuilder$10 = TraktV2Helper.lambda$getGsonBuilder$10(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$10;
                    case 6:
                        lambda$getGsonBuilder$12 = TraktV2Helper.lambda$getGsonBuilder$12(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$12;
                    case 7:
                        lambda$getGsonBuilder$14 = TraktV2Helper.lambda$getGsonBuilder$14(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$14;
                    case 8:
                        lambda$getGsonBuilder$16 = TraktV2Helper.lambda$getGsonBuilder$16(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$16;
                    default:
                        lambda$getGsonBuilder$2 = TraktV2Helper.lambda$getGsonBuilder$2(jsonElement, type, jsonDeserializationContext);
                        return lambda$getGsonBuilder$2;
                }
            }
        });
        return gsonBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ OffsetDateTime lambda$getGsonBuilder$0(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        return OffsetDateTime.parse(jsonElement.getAsString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonElement lambda$getGsonBuilder$1(OffsetDateTime offsetDateTime, Type type, JsonSerializationContext jsonSerializationContext) {
        return new JsonPrimitive(offsetDateTime.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Resolution lambda$getGsonBuilder$10(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        return Resolution.fromValue(jsonElement.getAsString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonElement lambda$getGsonBuilder$11(Hdr hdr, Type type, JsonSerializationContext jsonSerializationContext) {
        return new JsonPrimitive(hdr.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Hdr lambda$getGsonBuilder$12(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        return Hdr.fromValue(jsonElement.getAsString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonElement lambda$getGsonBuilder$13(Audio audio, Type type, JsonSerializationContext jsonSerializationContext) {
        return new JsonPrimitive(audio.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Audio lambda$getGsonBuilder$14(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        return Audio.fromValue(jsonElement.getAsString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonElement lambda$getGsonBuilder$15(AudioChannels audioChannels, Type type, JsonSerializationContext jsonSerializationContext) {
        return new JsonPrimitive(audioChannels.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ AudioChannels lambda$getGsonBuilder$16(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        return AudioChannels.fromValue(jsonElement.getAsString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ LocalDate lambda$getGsonBuilder$2(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        return LocalDate.parse(jsonElement.getAsString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Rating lambda$getGsonBuilder$3(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        return Rating.fromValue(jsonElement.getAsInt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonElement lambda$getGsonBuilder$4(Rating rating, Type type, JsonSerializationContext jsonSerializationContext) {
        return new JsonPrimitive(Integer.valueOf(rating.value));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Status lambda$getGsonBuilder$5(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        return Status.fromValue(jsonElement.getAsString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ProgressLastActivity lambda$getGsonBuilder$6(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        return ProgressLastActivity.fromValue(jsonElement.getAsString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonElement lambda$getGsonBuilder$7(MediaType mediaType, Type type, JsonSerializationContext jsonSerializationContext) {
        return new JsonPrimitive(mediaType.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ MediaType lambda$getGsonBuilder$8(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        return MediaType.fromValue(jsonElement.getAsString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonElement lambda$getGsonBuilder$9(Resolution resolution, Type type, JsonSerializationContext jsonSerializationContext) {
        return new JsonPrimitive(resolution.toString());
    }
}
