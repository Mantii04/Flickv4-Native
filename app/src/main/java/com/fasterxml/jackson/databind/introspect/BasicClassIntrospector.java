package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes.dex */
public class BasicClassIntrospector extends ClassIntrospector implements Serializable {
    protected static final BasicBeanDescription BOOLEAN_DESC;
    protected static final BasicBeanDescription INT_DESC;
    protected static final BasicBeanDescription LONG_DESC;
    protected static final BasicBeanDescription STRING_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(String.class), AnnotatedClassResolver.createPrimordial(String.class));
    private static final long serialVersionUID = 1;
    protected final LRUMap<JavaType, BasicBeanDescription> _cachedFCA = new LRUMap<>(16, 64);

    static {
        Class cls = Boolean.TYPE;
        BOOLEAN_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls), AnnotatedClassResolver.createPrimordial(cls));
        Class cls2 = Integer.TYPE;
        INT_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls2), AnnotatedClassResolver.createPrimordial(cls2));
        Class cls3 = Long.TYPE;
        LONG_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls3), AnnotatedClassResolver.createPrimordial(cls3));
    }

    public BasicBeanDescription _findStdJdkCollectionDesc(MapperConfig<?> mapperConfig, JavaType javaType) {
        if (_isStdJDKCollection(javaType)) {
            return BasicBeanDescription.forOtherUse(mapperConfig, javaType, _resolveAnnotatedClass(mapperConfig, javaType, mapperConfig));
        }
        return null;
    }

    public BasicBeanDescription _findStdTypeDesc(JavaType javaType) {
        Class<?> rawClass = javaType.getRawClass();
        if (!rawClass.isPrimitive()) {
            if (rawClass == String.class) {
                return STRING_DESC;
            }
            return null;
        }
        if (rawClass == Boolean.TYPE) {
            return BOOLEAN_DESC;
        }
        if (rawClass == Integer.TYPE) {
            return INT_DESC;
        }
        if (rawClass == Long.TYPE) {
            return LONG_DESC;
        }
        return null;
    }

    public boolean _isStdJDKCollection(JavaType javaType) {
        Class<?> rawClass;
        String packageName;
        return javaType.isContainerType() && !javaType.isArrayType() && (packageName = ClassUtil.getPackageName((rawClass = javaType.getRawClass()))) != null && (packageName.startsWith("java.lang") || packageName.startsWith("java.util")) && (Collection.class.isAssignableFrom(rawClass) || Map.class.isAssignableFrom(rawClass));
    }

    public AnnotatedClass _resolveAnnotatedClass(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return AnnotatedClassResolver.resolve(mapperConfig, javaType, mixInResolver);
    }

    public AnnotatedClass _resolveAnnotatedWithoutSuperTypes(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return AnnotatedClassResolver.resolveWithoutSuperTypes(mapperConfig, javaType, mixInResolver);
    }

    public POJOPropertiesCollector collectProperties(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver, boolean z6, String str) {
        return constructPropertyCollector(mapperConfig, _resolveAnnotatedClass(mapperConfig, javaType, mixInResolver), javaType, z6, str);
    }

    public POJOPropertiesCollector collectPropertiesWithBuilder(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver, boolean z6) {
        AnnotatedClass _resolveAnnotatedClass = _resolveAnnotatedClass(mapperConfig, javaType, mixInResolver);
        AnnotationIntrospector annotationIntrospector = mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null;
        JsonPOJOBuilder.Value findPOJOBuilderConfig = annotationIntrospector != null ? annotationIntrospector.findPOJOBuilderConfig(_resolveAnnotatedClass) : null;
        return constructPropertyCollector(mapperConfig, _resolveAnnotatedClass, javaType, z6, findPOJOBuilderConfig == null ? JsonPOJOBuilder.DEFAULT_WITH_PREFIX : findPOJOBuilderConfig.withPrefix);
    }

    public POJOPropertiesCollector constructPropertyCollector(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, JavaType javaType, boolean z6, String str) {
        return new POJOPropertiesCollector(mapperConfig, z6, javaType, annotatedClass, str);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public ClassIntrospector copy() {
        return new BasicClassIntrospector();
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public /* bridge */ /* synthetic */ BeanDescription forClassAnnotations(MapperConfig mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return forClassAnnotations((MapperConfig<?>) mapperConfig, javaType, mixInResolver);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public /* bridge */ /* synthetic */ BeanDescription forDirectClassAnnotations(MapperConfig mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return forDirectClassAnnotations((MapperConfig<?>) mapperConfig, javaType, mixInResolver);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(javaType);
        if (_findStdTypeDesc != null || (_findStdTypeDesc = this._cachedFCA.get(javaType)) != null) {
            return _findStdTypeDesc;
        }
        BasicBeanDescription forOtherUse = BasicBeanDescription.forOtherUse(mapperConfig, javaType, _resolveAnnotatedClass(mapperConfig, javaType, mixInResolver));
        this._cachedFCA.put(javaType, forOtherUse);
        return forOtherUse;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forCreation(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(javaType);
        return (_findStdTypeDesc == null && (_findStdTypeDesc = _findStdJdkCollectionDesc(deserializationConfig, javaType)) == null) ? BasicBeanDescription.forDeserialization(collectProperties(deserializationConfig, javaType, mixInResolver, false, "set")) : _findStdTypeDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forDeserialization(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicClassIntrospector basicClassIntrospector;
        JavaType javaType2;
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(javaType);
        if (_findStdTypeDesc != null) {
            return _findStdTypeDesc;
        }
        BasicBeanDescription _findStdJdkCollectionDesc = _findStdJdkCollectionDesc(deserializationConfig, javaType);
        if (_findStdJdkCollectionDesc == null) {
            basicClassIntrospector = this;
            javaType2 = javaType;
            _findStdJdkCollectionDesc = BasicBeanDescription.forDeserialization(basicClassIntrospector.collectProperties(deserializationConfig, javaType2, mixInResolver, false, "set"));
        } else {
            basicClassIntrospector = this;
            javaType2 = javaType;
        }
        basicClassIntrospector._cachedFCA.putIfAbsent(javaType2, _findStdJdkCollectionDesc);
        return _findStdJdkCollectionDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forDeserializationWithBuilder(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription forDeserialization = BasicBeanDescription.forDeserialization(collectPropertiesWithBuilder(deserializationConfig, javaType, mixInResolver, false));
        this._cachedFCA.putIfAbsent(javaType, forDeserialization);
        return forDeserialization;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forDirectClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(javaType);
        return _findStdTypeDesc == null ? BasicBeanDescription.forOtherUse(mapperConfig, javaType, _resolveAnnotatedWithoutSuperTypes(mapperConfig, javaType, mixInResolver)) : _findStdTypeDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    public BasicBeanDescription forSerialization(SerializationConfig serializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicClassIntrospector basicClassIntrospector;
        JavaType javaType2;
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(javaType);
        if (_findStdTypeDesc != null) {
            return _findStdTypeDesc;
        }
        BasicBeanDescription _findStdJdkCollectionDesc = _findStdJdkCollectionDesc(serializationConfig, javaType);
        if (_findStdJdkCollectionDesc == null) {
            basicClassIntrospector = this;
            javaType2 = javaType;
            _findStdJdkCollectionDesc = BasicBeanDescription.forSerialization(basicClassIntrospector.collectProperties(serializationConfig, javaType2, mixInResolver, true, "set"));
        } else {
            basicClassIntrospector = this;
            javaType2 = javaType;
        }
        basicClassIntrospector._cachedFCA.putIfAbsent(javaType2, _findStdJdkCollectionDesc);
        return _findStdJdkCollectionDesc;
    }
}
