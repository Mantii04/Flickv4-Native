package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.ReflectionAccessFilter;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.ReflectionAccessFilterHelper;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor constructorConstructor;
    private final Excluder excluder;
    private final FieldNamingStrategy fieldNamingPolicy;
    private final JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory;
    private final List<ReflectionAccessFilter> reflectionFilters;

    public static final class Adapter<T> extends TypeAdapter<T> {
        private final Map<String, BoundField> boundFields;
        private final ObjectConstructor<T> constructor;

        public Adapter(ObjectConstructor<T> objectConstructor, Map<String, BoundField> map) {
            this.constructor = objectConstructor;
            this.boundFields = map;
        }

        @Override // com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            T construct = this.constructor.construct();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    BoundField boundField = this.boundFields.get(jsonReader.nextName());
                    if (boundField != null && boundField.deserialized) {
                        boundField.read(jsonReader, construct);
                    }
                    jsonReader.skipValue();
                }
                jsonReader.endObject();
                return construct;
            } catch (IllegalAccessException e3) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e3);
            } catch (IllegalStateException e7) {
                throw new JsonSyntaxException(e7);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t6) throws IOException {
            if (t6 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                Iterator<BoundField> it = this.boundFields.values().iterator();
                while (it.hasNext()) {
                    it.next().write(jsonWriter, t6);
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e3) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e3);
            }
        }
    }

    public static abstract class BoundField {
        final boolean deserialized;
        final String name;
        final boolean serialized;

        public BoundField(String str, boolean z6, boolean z7) {
            this.name = str;
            this.serialized = z6;
            this.deserialized = z7;
        }

        public abstract void read(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException;

        public abstract void write(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException;
    }

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory, List<ReflectionAccessFilter> list) {
        this.constructorConstructor = constructorConstructor;
        this.fieldNamingPolicy = fieldNamingStrategy;
        this.excluder = excluder;
        this.jsonAdapterFactory = jsonAdapterAnnotationTypeAdapterFactory;
        this.reflectionFilters = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkAccessible(Object obj, Field field) {
        if (Modifier.isStatic(field.getModifiers())) {
            obj = null;
        }
        if (ReflectionAccessFilterHelper.canAccess(field, obj)) {
            return;
        }
        throw new JsonIOException("Field '" + field.getDeclaringClass().getName() + "#" + field.getName() + "' is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type or adjust the access filter.");
    }

    private BoundField createBoundField(final Gson gson, final Field field, String str, final TypeToken<?> typeToken, boolean z6, boolean z7, final boolean z8) {
        final boolean isPrimitive = Primitives.isPrimitive(typeToken.getRawType());
        JsonAdapter jsonAdapter = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
        TypeAdapter<?> typeAdapter = jsonAdapter != null ? this.jsonAdapterFactory.getTypeAdapter(this.constructorConstructor, gson, typeToken, jsonAdapter) : null;
        final boolean z9 = typeAdapter != null;
        if (typeAdapter == null) {
            typeAdapter = gson.getAdapter(typeToken);
        }
        final TypeAdapter<?> typeAdapter2 = typeAdapter;
        return new BoundField(str, z6, z7) { // from class: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            public void read(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException {
                Object read = typeAdapter2.read(jsonReader);
                if (read == null && isPrimitive) {
                    return;
                }
                if (z8) {
                    ReflectiveTypeAdapterFactory.checkAccessible(obj, field);
                }
                field.set(obj, read);
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            public void write(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException {
                if (this.serialized) {
                    if (z8) {
                        ReflectiveTypeAdapterFactory.checkAccessible(obj, field);
                    }
                    Object obj2 = field.get(obj);
                    if (obj2 == obj) {
                        return;
                    }
                    jsonWriter.name(this.name);
                    (z9 ? typeAdapter2 : new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter2, typeToken.getType())).write(jsonWriter, obj2);
                }
            }
        };
    }

    private Map<String, BoundField> getBoundFields(Gson gson, TypeToken<?> typeToken, Class<?> cls, boolean z6) {
        TypeToken<?> typeToken2;
        int i2;
        int i7;
        ReflectiveTypeAdapterFactory reflectiveTypeAdapterFactory = this;
        Class<?> cls2 = cls;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!cls2.isInterface()) {
            Type type = typeToken.getType();
            TypeToken<?> typeToken3 = typeToken;
            boolean z7 = z6;
            Class<?> cls3 = cls2;
            while (cls3 != Object.class) {
                Field[] declaredFields = cls3.getDeclaredFields();
                boolean z8 = true;
                boolean z9 = false;
                if (cls3 != cls2 && declaredFields.length > 0) {
                    ReflectionAccessFilter.FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(reflectiveTypeAdapterFactory.reflectionFilters, cls3);
                    if (filterResult == ReflectionAccessFilter.FilterResult.BLOCK_ALL) {
                        throw new JsonIOException("ReflectionAccessFilter does not permit using reflection for " + cls3 + " (supertype of " + cls2 + "). Register a TypeAdapter for this type or adjust the access filter.");
                    }
                    z7 = filterResult == ReflectionAccessFilter.FilterResult.BLOCK_INACCESSIBLE;
                }
                boolean z10 = z7;
                int length = declaredFields.length;
                int i8 = 0;
                while (i8 < length) {
                    int i9 = i8;
                    Field field = declaredFields[i9];
                    boolean includeField = reflectiveTypeAdapterFactory.includeField(field, z8);
                    boolean includeField2 = reflectiveTypeAdapterFactory.includeField(field, z9);
                    if (includeField || includeField2) {
                        if (!z10) {
                            ReflectionHelper.makeAccessible(field);
                        }
                        Type resolve = C$Gson$Types.resolve(typeToken3.getType(), cls3, field.getGenericType());
                        List<String> fieldNames = reflectiveTypeAdapterFactory.getFieldNames(field);
                        int size = fieldNames.size();
                        BoundField boundField = null;
                        typeToken2 = typeToken3;
                        int i10 = 0;
                        while (i10 < size) {
                            String str = fieldNames.get(i10);
                            if (i10 != 0) {
                                includeField = false;
                            }
                            List<String> list = fieldNames;
                            boolean z11 = includeField;
                            int i11 = i9;
                            int i12 = length;
                            BoundField boundField2 = (BoundField) linkedHashMap.put(str, reflectiveTypeAdapterFactory.createBoundField(gson, field, str, TypeToken.get(resolve), z11, includeField2, z10));
                            if (boundField == null) {
                                boundField = boundField2;
                            }
                            i10++;
                            reflectiveTypeAdapterFactory = this;
                            includeField = z11;
                            length = i12;
                            i9 = i11;
                            fieldNames = list;
                        }
                        i2 = length;
                        i7 = i9;
                        if (boundField != null) {
                            throw new IllegalArgumentException(type + " declares multiple JSON fields named " + boundField.name);
                        }
                    } else {
                        i2 = length;
                        i7 = i9;
                        typeToken2 = typeToken3;
                    }
                    i8 = i7 + 1;
                    reflectiveTypeAdapterFactory = this;
                    typeToken3 = typeToken2;
                    length = i2;
                    z8 = true;
                    z9 = false;
                }
                typeToken3 = TypeToken.get(C$Gson$Types.resolve(typeToken3.getType(), cls3, cls3.getGenericSuperclass()));
                cls3 = typeToken3.getRawType();
                reflectiveTypeAdapterFactory = this;
                cls2 = cls;
                z7 = z10;
            }
        }
        return linkedHashMap;
    }

    private List<String> getFieldNames(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        if (serializedName == null) {
            return Collections.singletonList(this.fieldNamingPolicy.translateName(field));
        }
        String value = serializedName.value();
        String[] alternate = serializedName.alternate();
        if (alternate.length == 0) {
            return Collections.singletonList(value);
        }
        ArrayList arrayList = new ArrayList(alternate.length + 1);
        arrayList.add(value);
        for (String str : alternate) {
            arrayList.add(str);
        }
        return arrayList;
    }

    private boolean includeField(Field field, boolean z6) {
        return (this.excluder.excludeClass(field.getType(), z6) || this.excluder.excludeField(field, z6)) ? false : true;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        if (!Object.class.isAssignableFrom(rawType)) {
            return null;
        }
        ReflectionAccessFilter.FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(this.reflectionFilters, rawType);
        if (filterResult != ReflectionAccessFilter.FilterResult.BLOCK_ALL) {
            return new Adapter(this.constructorConstructor.get(typeToken), getBoundFields(gson, typeToken, rawType, filterResult == ReflectionAccessFilter.FilterResult.BLOCK_INACCESSIBLE));
        }
        throw new JsonIOException("ReflectionAccessFilter does not permit using reflection for " + rawType + ". Register a TypeAdapter for this type or adjust the access filter.");
    }
}
