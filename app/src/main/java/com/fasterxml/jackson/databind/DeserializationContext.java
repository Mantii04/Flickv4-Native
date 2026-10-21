package com.fasterxml.jackson.databind;

import A.i;
import b.c;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualKeyDeserializer;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.deser.DeserializerCache;
import com.fasterxml.jackson.databind.deser.DeserializerFactory;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.deser.impl.TypeWrappedDeserializer;
import com.fasterxml.jackson.databind.exc.InvalidDefinitionException;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.fasterxml.jackson.databind.exc.InvalidTypeIdException;
import com.fasterxml.jackson.databind.exc.MismatchedInputException;
import com.fasterxml.jackson.databind.exc.UnrecognizedPropertyException;
import com.fasterxml.jackson.databind.exc.ValueInstantiationException;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.LinkedNode;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.io.IOException;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class DeserializationContext extends DatabindContext implements Serializable {
    private static final long serialVersionUID = 1;
    protected transient ArrayBuilders _arrayBuilders;
    protected transient ContextAttributes _attributes;
    protected final DeserializerCache _cache;
    protected final DeserializationConfig _config;
    protected LinkedNode<JavaType> _currentType;
    protected transient DateFormat _dateFormat;
    protected final DeserializerFactory _factory;
    protected final int _featureFlags;
    protected final InjectableValues _injectableValues;
    protected transient ObjectBuffer _objectBuffer;
    protected transient JsonParser _parser;
    protected final Class<?> _view;

    public DeserializationContext(DeserializerFactory deserializerFactory) {
        this(deserializerFactory, (DeserializerCache) null);
    }

    public boolean _isCompatible(Class<?> cls, Object obj) {
        if (obj == null || cls.isInstance(obj)) {
            return true;
        }
        return cls.isPrimitive() && ClassUtil.wrapperType(cls).isInstance(obj);
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public final boolean canOverrideAccessModifiers() {
        return this._config.canOverrideAccessModifiers();
    }

    public abstract void checkUnresolvedObjectId() throws UnresolvedForwardReference;

    public Calendar constructCalendar(Date date) {
        Calendar calendar = Calendar.getInstance(getTimeZone());
        calendar.setTime(date);
        return calendar;
    }

    public final JavaType constructType(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        return this._config.constructType(cls);
    }

    public abstract JsonDeserializer<Object> deserializerInstance(Annotated annotated, Object obj) throws JsonMappingException;

    @Deprecated
    public JsonMappingException endOfInputException(Class<?> cls) {
        return MismatchedInputException.from(this._parser, cls, "Unexpected end-of-input when trying to deserialize a ".concat(cls.getName()));
    }

    public Class<?> findClass(String str) throws ClassNotFoundException {
        return getTypeFactory().findClass(str);
    }

    public final JsonDeserializer<Object> findContextualValueDeserializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<Object> findValueDeserializer = this._cache.findValueDeserializer(this, this._factory, javaType);
        return findValueDeserializer != null ? handleSecondaryContextualization(findValueDeserializer, beanProperty, javaType) : findValueDeserializer;
    }

    public final Object findInjectableValue(Object obj, BeanProperty beanProperty, Object obj2) throws JsonMappingException {
        if (this._injectableValues == null) {
            reportBadDefinition(ClassUtil.classOf(obj), String.format("No 'injectableValues' configured, cannot inject value with id [%s]", obj));
        }
        return this._injectableValues.findInjectableValue(obj, this, beanProperty, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final KeyDeserializer findKeyDeserializer(JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        KeyDeserializer findKeyDeserializer = this._cache.findKeyDeserializer(this, this._factory, javaType);
        return findKeyDeserializer instanceof ContextualKeyDeserializer ? ((ContextualKeyDeserializer) findKeyDeserializer).createContextual(this, beanProperty) : findKeyDeserializer;
    }

    public final JsonDeserializer<Object> findNonContextualValueDeserializer(JavaType javaType) throws JsonMappingException {
        return this._cache.findValueDeserializer(this, this._factory, javaType);
    }

    public abstract ReadableObjectId findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator, ObjectIdResolver objectIdResolver);

    public final JsonDeserializer<Object> findRootValueDeserializer(JavaType javaType) throws JsonMappingException {
        JsonDeserializer<Object> findValueDeserializer = this._cache.findValueDeserializer(this, this._factory, javaType);
        if (findValueDeserializer == null) {
            return null;
        }
        JsonDeserializer<?> handleSecondaryContextualization = handleSecondaryContextualization(findValueDeserializer, null, javaType);
        TypeDeserializer findTypeDeserializer = this._factory.findTypeDeserializer(this._config, javaType);
        return findTypeDeserializer != null ? new TypeWrappedDeserializer(findTypeDeserializer.forProperty(null), handleSecondaryContextualization) : handleSecondaryContextualization;
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public final Class<?> getActiveView() {
        return this._view;
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public final AnnotationIntrospector getAnnotationIntrospector() {
        return this._config.getAnnotationIntrospector();
    }

    public final ArrayBuilders getArrayBuilders() {
        if (this._arrayBuilders == null) {
            this._arrayBuilders = new ArrayBuilders();
        }
        return this._arrayBuilders;
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public Object getAttribute(Object obj) {
        return this._attributes.getAttribute(obj);
    }

    public final Base64Variant getBase64Variant() {
        return this._config.getBase64Variant();
    }

    public JavaType getContextualType() {
        LinkedNode<JavaType> linkedNode = this._currentType;
        if (linkedNode == null) {
            return null;
        }
        return linkedNode.value();
    }

    public DateFormat getDateFormat() {
        DateFormat dateFormat = this._dateFormat;
        if (dateFormat != null) {
            return dateFormat;
        }
        DateFormat dateFormat2 = (DateFormat) this._config.getDateFormat().clone();
        this._dateFormat = dateFormat2;
        return dateFormat2;
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public final JsonFormat.Value getDefaultPropertyFormat(Class<?> cls) {
        return this._config.getDefaultPropertyFormat(cls);
    }

    public final int getDeserializationFeatures() {
        return this._featureFlags;
    }

    public DeserializerFactory getFactory() {
        return this._factory;
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public Locale getLocale() {
        return this._config.getLocale();
    }

    public final JsonNodeFactory getNodeFactory() {
        return this._config.getNodeFactory();
    }

    public final JsonParser getParser() {
        return this._parser;
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public TimeZone getTimeZone() {
        return this._config.getTimeZone();
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public final TypeFactory getTypeFactory() {
        return this._config.getTypeFactory();
    }

    public void handleBadMerge(JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (isEnabled(MapperFeature.IGNORE_MERGE_FOR_UNMERGEABLE)) {
            return;
        }
        JavaType constructType = constructType(jsonDeserializer.handledType());
        throw InvalidDefinitionException.from(getParser(), i.l("Invalid configuration: values of type ", ClassUtil.getTypeDescription(constructType), " cannot be merged"), constructType);
    }

    public Object handleInstantiationProblem(Class<?> cls, Object obj, Throwable th) throws IOException {
        for (LinkedNode<DeserializationProblemHandler> problemHandlers = this._config.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.next()) {
            Object handleInstantiationProblem = problemHandlers.value().handleInstantiationProblem(this, cls, obj, th);
            if (handleInstantiationProblem != DeserializationProblemHandler.NOT_HANDLED) {
                if (_isCompatible(cls, handleInstantiationProblem)) {
                    return handleInstantiationProblem;
                }
                reportBadDefinition(constructType(cls), c.l("DeserializationProblemHandler.handleInstantiationProblem() for type ", ClassUtil.getClassDescription(cls), " returned value of type ", ClassUtil.classNameOf(handleInstantiationProblem)));
            }
        }
        ClassUtil.throwIfIOE(th);
        if (!isEnabled(DeserializationFeature.WRAP_EXCEPTIONS)) {
            ClassUtil.throwIfRTE(th);
        }
        throw instantiationException(cls, th);
    }

    public Object handleMissingInstantiator(Class<?> cls, ValueInstantiator valueInstantiator, JsonParser jsonParser, String str, Object... objArr) throws IOException {
        if (jsonParser == null) {
            jsonParser = getParser();
        }
        JsonParser jsonParser2 = jsonParser;
        String _format = _format(str, objArr);
        LinkedNode<DeserializationProblemHandler> problemHandlers = this._config.getProblemHandlers();
        while (problemHandlers != null) {
            Class<?> cls2 = cls;
            ValueInstantiator valueInstantiator2 = valueInstantiator;
            Object handleMissingInstantiator = problemHandlers.value().handleMissingInstantiator(this, cls2, valueInstantiator2, jsonParser2, _format);
            if (handleMissingInstantiator != DeserializationProblemHandler.NOT_HANDLED) {
                if (_isCompatible(cls2, handleMissingInstantiator)) {
                    return handleMissingInstantiator;
                }
                reportBadDefinition(constructType(cls2), c.l("DeserializationProblemHandler.handleMissingInstantiator() for type ", ClassUtil.getClassDescription(cls2), " returned value of type ", ClassUtil.getClassDescription(handleMissingInstantiator)));
            }
            problemHandlers = problemHandlers.next();
            cls = cls2;
            valueInstantiator = valueInstantiator2;
        }
        Class<?> cls3 = cls;
        ValueInstantiator valueInstantiator3 = valueInstantiator;
        if (valueInstantiator3 == null || valueInstantiator3.canInstantiate()) {
            return reportInputMismatch(cls3, c.l("Cannot construct instance of ", ClassUtil.nameOf(cls3), " (although at least one Creator exists): ", _format), new Object[0]);
        }
        return reportBadDefinition(constructType(cls3), c.l("Cannot construct instance of ", ClassUtil.nameOf(cls3), " (no Creators, like default construct, exist): ", _format));
    }

    public JavaType handleMissingTypeId(JavaType javaType, TypeIdResolver typeIdResolver, String str) throws IOException {
        for (LinkedNode<DeserializationProblemHandler> problemHandlers = this._config.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.next()) {
            JavaType handleMissingTypeId = problemHandlers.value().handleMissingTypeId(this, javaType, typeIdResolver, str);
            if (handleMissingTypeId != null) {
                if (handleMissingTypeId.hasRawClass(Void.class)) {
                    return null;
                }
                if (handleMissingTypeId.isTypeOrSubTypeOf(javaType.getRawClass())) {
                    return handleMissingTypeId;
                }
                throw invalidTypeIdException(javaType, null, "problem handler tried to resolve into non-subtype: " + ClassUtil.getTypeDescription(handleMissingTypeId));
            }
        }
        throw missingTypeIdException(javaType, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JsonDeserializer<?> handlePrimaryContextualization(JsonDeserializer<?> jsonDeserializer, BeanProperty beanProperty, JavaType javaType) throws JsonMappingException {
        if (!(jsonDeserializer instanceof ContextualDeserializer)) {
            return jsonDeserializer;
        }
        this._currentType = new LinkedNode<>(javaType, this._currentType);
        try {
            return ((ContextualDeserializer) jsonDeserializer).createContextual(this, beanProperty);
        } finally {
            this._currentType = this._currentType.next();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JsonDeserializer<?> handleSecondaryContextualization(JsonDeserializer<?> jsonDeserializer, BeanProperty beanProperty, JavaType javaType) throws JsonMappingException {
        if (!(jsonDeserializer instanceof ContextualDeserializer)) {
            return jsonDeserializer;
        }
        this._currentType = new LinkedNode<>(javaType, this._currentType);
        try {
            return ((ContextualDeserializer) jsonDeserializer).createContextual(this, beanProperty);
        } finally {
            this._currentType = this._currentType.next();
        }
    }

    public Object handleUnexpectedToken(Class<?> cls, JsonParser jsonParser) throws IOException {
        return handleUnexpectedToken(constructType(cls), jsonParser.getCurrentToken(), jsonParser, (String) null, new Object[0]);
    }

    public boolean handleUnknownProperty(JsonParser jsonParser, JsonDeserializer<?> jsonDeserializer, Object obj, String str) throws IOException {
        LinkedNode<DeserializationProblemHandler> problemHandlers = this._config.getProblemHandlers();
        while (problemHandlers != null) {
            JsonParser jsonParser2 = jsonParser;
            JsonDeserializer<?> jsonDeserializer2 = jsonDeserializer;
            Object obj2 = obj;
            String str2 = str;
            if (problemHandlers.value().handleUnknownProperty(this, jsonParser2, jsonDeserializer2, obj2, str2)) {
                return true;
            }
            problemHandlers = problemHandlers.next();
            jsonParser = jsonParser2;
            jsonDeserializer = jsonDeserializer2;
            obj = obj2;
            str = str2;
        }
        JsonParser jsonParser3 = jsonParser;
        JsonDeserializer<?> jsonDeserializer3 = jsonDeserializer;
        Object obj3 = obj;
        String str3 = str;
        if (isEnabled(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES)) {
            throw UnrecognizedPropertyException.from(this._parser, obj3, str3, jsonDeserializer3 == null ? null : jsonDeserializer3.getKnownPropertyNames());
        }
        jsonParser3.skipChildren();
        return true;
    }

    public JavaType handleUnknownTypeId(JavaType javaType, String str, TypeIdResolver typeIdResolver, String str2) throws IOException {
        LinkedNode<DeserializationProblemHandler> problemHandlers = this._config.getProblemHandlers();
        while (problemHandlers != null) {
            JavaType javaType2 = javaType;
            String str3 = str;
            TypeIdResolver typeIdResolver2 = typeIdResolver;
            String str4 = str2;
            JavaType handleUnknownTypeId = problemHandlers.value().handleUnknownTypeId(this, javaType2, str3, typeIdResolver2, str4);
            if (handleUnknownTypeId != null) {
                if (handleUnknownTypeId.hasRawClass(Void.class)) {
                    return null;
                }
                if (handleUnknownTypeId.isTypeOrSubTypeOf(javaType2.getRawClass())) {
                    return handleUnknownTypeId;
                }
                throw invalidTypeIdException(javaType2, str3, "problem handler tried to resolve into non-subtype: " + ClassUtil.getTypeDescription(handleUnknownTypeId));
            }
            problemHandlers = problemHandlers.next();
            javaType = javaType2;
            str = str3;
            typeIdResolver = typeIdResolver2;
            str2 = str4;
        }
        JavaType javaType3 = javaType;
        String str5 = str;
        String str6 = str2;
        if (isEnabled(DeserializationFeature.FAIL_ON_INVALID_SUBTYPE)) {
            throw invalidTypeIdException(javaType3, str5, str6);
        }
        return null;
    }

    public Object handleWeirdKey(Class<?> cls, String str, String str2, Object... objArr) throws IOException {
        String _format = _format(str2, objArr);
        for (LinkedNode<DeserializationProblemHandler> problemHandlers = this._config.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.next()) {
            Object handleWeirdKey = problemHandlers.value().handleWeirdKey(this, cls, str, _format);
            if (handleWeirdKey != DeserializationProblemHandler.NOT_HANDLED) {
                if (handleWeirdKey == null || cls.isInstance(handleWeirdKey)) {
                    return handleWeirdKey;
                }
                throw weirdStringException(str, cls, c.l("DeserializationProblemHandler.handleWeirdStringValue() for type ", ClassUtil.getClassDescription(cls), " returned value of type ", ClassUtil.getClassDescription(handleWeirdKey)));
            }
        }
        throw weirdKeyException(cls, str, _format);
    }

    public Object handleWeirdNativeValue(JavaType javaType, Object obj, JsonParser jsonParser) throws IOException {
        Class<?> rawClass = javaType.getRawClass();
        for (LinkedNode<DeserializationProblemHandler> problemHandlers = this._config.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.next()) {
            Object handleWeirdNativeValue = problemHandlers.value().handleWeirdNativeValue(this, javaType, obj, jsonParser);
            if (handleWeirdNativeValue != DeserializationProblemHandler.NOT_HANDLED) {
                if (handleWeirdNativeValue == null || rawClass.isInstance(handleWeirdNativeValue)) {
                    return handleWeirdNativeValue;
                }
                throw JsonMappingException.from(jsonParser, _format("DeserializationProblemHandler.handleWeirdNativeValue() for type %s returned value of type %s", ClassUtil.getClassDescription(javaType), ClassUtil.getClassDescription(handleWeirdNativeValue)));
            }
        }
        throw weirdNativeValueException(obj, rawClass);
    }

    public Object handleWeirdNumberValue(Class<?> cls, Number number, String str, Object... objArr) throws IOException {
        String _format = _format(str, objArr);
        for (LinkedNode<DeserializationProblemHandler> problemHandlers = this._config.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.next()) {
            Object handleWeirdNumberValue = problemHandlers.value().handleWeirdNumberValue(this, cls, number, _format);
            if (handleWeirdNumberValue != DeserializationProblemHandler.NOT_HANDLED) {
                if (_isCompatible(cls, handleWeirdNumberValue)) {
                    return handleWeirdNumberValue;
                }
                throw weirdNumberException(number, cls, _format("DeserializationProblemHandler.handleWeirdNumberValue() for type %s returned value of type %s", ClassUtil.getClassDescription(cls), ClassUtil.getClassDescription(handleWeirdNumberValue)));
            }
        }
        throw weirdNumberException(number, cls, _format);
    }

    public Object handleWeirdStringValue(Class<?> cls, String str, String str2, Object... objArr) throws IOException {
        String _format = _format(str2, objArr);
        for (LinkedNode<DeserializationProblemHandler> problemHandlers = this._config.getProblemHandlers(); problemHandlers != null; problemHandlers = problemHandlers.next()) {
            Object handleWeirdStringValue = problemHandlers.value().handleWeirdStringValue(this, cls, str, _format);
            if (handleWeirdStringValue != DeserializationProblemHandler.NOT_HANDLED) {
                if (_isCompatible(cls, handleWeirdStringValue)) {
                    return handleWeirdStringValue;
                }
                throw weirdStringException(str, cls, c.l("DeserializationProblemHandler.handleWeirdStringValue() for type ", ClassUtil.getClassDescription(cls), " returned value of type ", ClassUtil.getClassDescription(handleWeirdStringValue)));
            }
        }
        throw weirdStringException(str, cls, _format);
    }

    public final boolean hasDeserializationFeatures(int i2) {
        return (this._featureFlags & i2) == i2;
    }

    public final boolean hasSomeOfFeatures(int i2) {
        return (i2 & this._featureFlags) != 0;
    }

    public boolean hasValueDeserializerFor(JavaType javaType, AtomicReference<Throwable> atomicReference) {
        try {
            return this._cache.hasValueDeserializerFor(this, this._factory, javaType);
        } catch (JsonMappingException e3) {
            if (atomicReference == null) {
                return false;
            }
            atomicReference.set(e3);
            return false;
        } catch (RuntimeException e7) {
            if (atomicReference == null) {
                throw e7;
            }
            atomicReference.set(e7);
            return false;
        }
    }

    public JsonMappingException instantiationException(Class<?> cls, Throwable th) {
        String exceptionMessage;
        if (th == null) {
            exceptionMessage = "N/A";
        } else {
            exceptionMessage = ClassUtil.exceptionMessage(th);
            if (exceptionMessage == null) {
                exceptionMessage = ClassUtil.nameOf(th.getClass());
            }
        }
        return ValueInstantiationException.from(this._parser, c.l("Cannot construct instance of ", ClassUtil.nameOf(cls), ", problem: ", exceptionMessage), constructType(cls), th);
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public JsonMappingException invalidTypeIdException(JavaType javaType, String str, String str2) {
        return InvalidTypeIdException.from(this._parser, _colonConcat(c.l("Could not resolve type id '", str, "' as a subtype of ", ClassUtil.getTypeDescription(javaType)), str2), javaType, str);
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public final boolean isEnabled(MapperFeature mapperFeature) {
        return this._config.isEnabled(mapperFeature);
    }

    public abstract KeyDeserializer keyDeserializerInstance(Annotated annotated, Object obj) throws JsonMappingException;

    public final ObjectBuffer leaseObjectBuffer() {
        ObjectBuffer objectBuffer = this._objectBuffer;
        if (objectBuffer == null) {
            return new ObjectBuffer();
        }
        this._objectBuffer = null;
        return objectBuffer;
    }

    @Deprecated
    public JsonMappingException mappingException(String str) {
        return JsonMappingException.from(getParser(), str);
    }

    public JsonMappingException missingTypeIdException(JavaType javaType, String str) {
        return InvalidTypeIdException.from(this._parser, _colonConcat(String.format("Missing type id when trying to resolve subtype of %s", javaType), str), javaType, null);
    }

    public Date parseDate(String str) throws IllegalArgumentException {
        try {
            return getDateFormat().parse(str);
        } catch (ParseException e3) {
            throw new IllegalArgumentException(c.l("Failed to parse Date value '", str, "': ", ClassUtil.exceptionMessage(e3)));
        }
    }

    public <T> T readPropertyValue(JsonParser jsonParser, BeanProperty beanProperty, Class<T> cls) throws IOException {
        return (T) readPropertyValue(jsonParser, beanProperty, getTypeFactory().constructType(cls));
    }

    public JsonNode readTree(JsonParser jsonParser) throws IOException {
        JsonToken currentToken = jsonParser.currentToken();
        return (currentToken == null && (currentToken = jsonParser.nextToken()) == null) ? getNodeFactory().missingNode() : currentToken == JsonToken.VALUE_NULL ? getNodeFactory().nullNode() : (JsonNode) findRootValueDeserializer(this._config.constructType(JsonNode.class)).deserialize(jsonParser, this);
    }

    public <T> T readValue(JsonParser jsonParser, Class<T> cls) throws IOException {
        return (T) readValue(jsonParser, getTypeFactory().constructType(cls));
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public <T> T reportBadDefinition(JavaType javaType, String str) throws JsonMappingException {
        throw InvalidDefinitionException.from(this._parser, str, javaType);
    }

    @Deprecated
    public <T> T reportBadMerge(JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        handleBadMerge(jsonDeserializer);
        return null;
    }

    public <T> T reportBadPropertyDefinition(BeanDescription beanDescription, BeanPropertyDefinition beanPropertyDefinition, String str, Object... objArr) throws JsonMappingException {
        String _format = _format(str, objArr);
        StringBuilder u6 = i.u("Invalid definition for property ", ClassUtil.nameOf(beanPropertyDefinition), " (of type ", ClassUtil.nameOf(beanDescription.getBeanClass()), "): ");
        u6.append(_format);
        throw InvalidDefinitionException.from(this._parser, u6.toString(), beanDescription, beanPropertyDefinition);
    }

    public <T> T reportBadTypeDefinition(BeanDescription beanDescription, String str, Object... objArr) throws JsonMappingException {
        throw InvalidDefinitionException.from(this._parser, c.l("Invalid type definition for type ", ClassUtil.nameOf(beanDescription.getBeanClass()), ": ", _format(str, objArr)), beanDescription, (BeanPropertyDefinition) null);
    }

    public <T> T reportInputMismatch(JsonDeserializer<?> jsonDeserializer, String str, Object... objArr) throws JsonMappingException {
        throw MismatchedInputException.from(getParser(), jsonDeserializer.handledType(), _format(str, objArr));
    }

    @Deprecated
    public void reportMappingException(String str, Object... objArr) throws JsonMappingException {
        throw JsonMappingException.from(getParser(), _format(str, objArr));
    }

    @Deprecated
    public void reportMissingContent(String str, Object... objArr) throws JsonMappingException {
        throw MismatchedInputException.from(getParser(), (JavaType) null, "No content to map due to end-of-input");
    }

    public <T> T reportPropertyInputMismatch(Class<?> cls, String str, String str2, Object... objArr) throws JsonMappingException {
        MismatchedInputException from = MismatchedInputException.from(getParser(), cls, _format(str2, objArr));
        if (str == null) {
            throw from;
        }
        from.prependPath(cls, str);
        throw from;
    }

    public <T> T reportTrailingTokens(Class<?> cls, JsonParser jsonParser, JsonToken jsonToken) throws JsonMappingException {
        throw MismatchedInputException.from(jsonParser, cls, "Trailing token (of type " + jsonToken + ") found after value (bound as " + ClassUtil.nameOf(cls) + "): not allowed as per `DeserializationFeature.FAIL_ON_TRAILING_TOKENS`");
    }

    @Deprecated
    public void reportUnknownProperty(Object obj, String str, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (isEnabled(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES)) {
            throw UnrecognizedPropertyException.from(this._parser, obj, str, jsonDeserializer == null ? null : jsonDeserializer.getKnownPropertyNames());
        }
    }

    public <T> T reportUnresolvedObjectId(ObjectIdReader objectIdReader, Object obj) throws JsonMappingException {
        return (T) reportInputMismatch(objectIdReader.idProperty, String.format("No Object Id found for an instance of %s, to assign to property '%s'", ClassUtil.classNameOf(obj), objectIdReader.propertyName), new Object[0]);
    }

    public void reportWrongTokenException(JsonDeserializer<?> jsonDeserializer, JsonToken jsonToken, String str, Object... objArr) throws JsonMappingException {
        throw wrongTokenException(getParser(), jsonDeserializer.handledType(), jsonToken, _format(str, objArr));
    }

    public final void returnObjectBuffer(ObjectBuffer objectBuffer) {
        if (this._objectBuffer == null || objectBuffer.initialCapacity() >= this._objectBuffer.initialCapacity()) {
            this._objectBuffer = objectBuffer;
        }
    }

    @Deprecated
    public JsonMappingException unknownTypeException(JavaType javaType, String str, String str2) {
        return MismatchedInputException.from(this._parser, javaType, _colonConcat(c.l("Could not resolve type id '", str, "' into a subtype of ", ClassUtil.getTypeDescription(javaType)), str2));
    }

    public JsonMappingException weirdKeyException(Class<?> cls, String str, String str2) {
        JsonParser jsonParser = this._parser;
        StringBuilder u6 = i.u("Cannot deserialize Map key of type ", ClassUtil.nameOf(cls), " from String ", _quotedString(str), ": ");
        u6.append(str2);
        return InvalidFormatException.from(jsonParser, u6.toString(), str, cls);
    }

    public JsonMappingException weirdNativeValueException(Object obj, Class<?> cls) {
        return InvalidFormatException.from(this._parser, c.m("Cannot deserialize value of type ", ClassUtil.nameOf(cls), " from native value (`JsonToken.VALUE_EMBEDDED_OBJECT`) of type ", ClassUtil.classNameOf(obj), ": incompatible types"), obj, cls);
    }

    public JsonMappingException weirdNumberException(Number number, Class<?> cls, String str) {
        JsonParser jsonParser = this._parser;
        StringBuilder u6 = i.u("Cannot deserialize value of type ", ClassUtil.nameOf(cls), " from number ", String.valueOf(number), ": ");
        u6.append(str);
        return InvalidFormatException.from(jsonParser, u6.toString(), number, cls);
    }

    public JsonMappingException weirdStringException(String str, Class<?> cls, String str2) {
        StringBuilder u6 = i.u("Cannot deserialize value of type ", ClassUtil.nameOf(cls), " from String ", _quotedString(str), ": ");
        u6.append(str2);
        return InvalidFormatException.from(this._parser, u6.toString(), str, cls);
    }

    public JsonMappingException wrongTokenException(JsonParser jsonParser, JavaType javaType, JsonToken jsonToken, String str) {
        return MismatchedInputException.from(jsonParser, javaType, _colonConcat("Unexpected token (" + jsonParser.getCurrentToken() + "), expected " + jsonToken, str));
    }

    public DeserializationContext(DeserializerFactory deserializerFactory, DeserializerCache deserializerCache) {
        Objects.requireNonNull(deserializerFactory, "Cannot pass null DeserializerFactory");
        this._factory = deserializerFactory;
        this._cache = deserializerCache == null ? new DeserializerCache() : deserializerCache;
        this._featureFlags = 0;
        this._config = null;
        this._injectableValues = null;
        this._view = null;
        this._attributes = null;
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public DeserializationConfig getConfig() {
        return this._config;
    }

    public Object handleUnexpectedToken(Class<?> cls, JsonToken jsonToken, JsonParser jsonParser, String str, Object... objArr) throws IOException {
        return handleUnexpectedToken(constructType(cls), jsonToken, jsonParser, str, objArr);
    }

    public final boolean isEnabled(DeserializationFeature deserializationFeature) {
        return (deserializationFeature.getMask() & this._featureFlags) != 0;
    }

    @Deprecated
    public JsonMappingException mappingException(String str, Object... objArr) {
        return JsonMappingException.from(getParser(), _format(str, objArr));
    }

    public <T> T readPropertyValue(JsonParser jsonParser, BeanProperty beanProperty, JavaType javaType) throws IOException {
        JsonDeserializer<Object> findContextualValueDeserializer = findContextualValueDeserializer(javaType, beanProperty);
        return findContextualValueDeserializer == null ? (T) reportBadDefinition(javaType, c.m("Could not find JsonDeserializer for type ", ClassUtil.getTypeDescription(javaType), " (via property ", ClassUtil.nameOf(beanProperty), ")")) : (T) findContextualValueDeserializer.deserialize(jsonParser, this);
    }

    public <T> T readValue(JsonParser jsonParser, JavaType javaType) throws IOException {
        JsonDeserializer<Object> findRootValueDeserializer = findRootValueDeserializer(javaType);
        if (findRootValueDeserializer == null) {
            reportBadDefinition(javaType, "Could not find JsonDeserializer for type " + ClassUtil.getTypeDescription(javaType));
        }
        return (T) findRootValueDeserializer.deserialize(jsonParser, this);
    }

    @Override // com.fasterxml.jackson.databind.DatabindContext
    public DeserializationContext setAttribute(Object obj, Object obj2) {
        this._attributes = this._attributes.withPerCallAttribute(obj, obj2);
        return this;
    }

    public Object handleUnexpectedToken(JavaType javaType, JsonParser jsonParser) throws IOException {
        return handleUnexpectedToken(javaType, jsonParser.getCurrentToken(), jsonParser, (String) null, new Object[0]);
    }

    @Deprecated
    public JsonMappingException mappingException(Class<?> cls) {
        return mappingException(cls, this._parser.getCurrentToken());
    }

    public <T> T reportInputMismatch(Class<?> cls, String str, Object... objArr) throws JsonMappingException {
        throw MismatchedInputException.from(getParser(), cls, _format(str, objArr));
    }

    public void reportWrongTokenException(JavaType javaType, JsonToken jsonToken, String str, Object... objArr) throws JsonMappingException {
        throw wrongTokenException(getParser(), javaType, jsonToken, _format(str, objArr));
    }

    public Object handleUnexpectedToken(JavaType javaType, JsonToken jsonToken, JsonParser jsonParser, String str, Object... objArr) throws IOException {
        String _format = _format(str, objArr);
        LinkedNode<DeserializationProblemHandler> problemHandlers = this._config.getProblemHandlers();
        while (problemHandlers != null) {
            JavaType javaType2 = javaType;
            JsonToken jsonToken2 = jsonToken;
            JsonParser jsonParser2 = jsonParser;
            Object handleUnexpectedToken = problemHandlers.value().handleUnexpectedToken(this, javaType2, jsonToken2, jsonParser2, _format);
            if (handleUnexpectedToken != DeserializationProblemHandler.NOT_HANDLED) {
                if (_isCompatible(javaType2.getRawClass(), handleUnexpectedToken)) {
                    return handleUnexpectedToken;
                }
                reportBadDefinition(javaType2, c.l("DeserializationProblemHandler.handleUnexpectedToken() for type ", ClassUtil.getClassDescription(javaType2), " returned value of type ", ClassUtil.classNameOf(handleUnexpectedToken)));
            }
            problemHandlers = problemHandlers.next();
            javaType = javaType2;
            jsonToken = jsonToken2;
            jsonParser = jsonParser2;
        }
        JavaType javaType3 = javaType;
        JsonToken jsonToken3 = jsonToken;
        if (_format == null) {
            if (jsonToken3 == null) {
                _format = i.k("Unexpected end-of-input when binding data into ", ClassUtil.getTypeDescription(javaType3));
            } else {
                _format = "Cannot deserialize instance of " + ClassUtil.getTypeDescription(javaType3) + " out of " + jsonToken3 + " token";
            }
        }
        reportInputMismatch(javaType3, _format, new Object[0]);
        return null;
    }

    @Deprecated
    public JsonMappingException mappingException(Class<?> cls, JsonToken jsonToken) {
        return JsonMappingException.from(this._parser, "Cannot deserialize instance of " + ClassUtil.nameOf(cls) + " out of " + jsonToken + " token");
    }

    public <T> T reportInputMismatch(JavaType javaType, String str, Object... objArr) throws JsonMappingException {
        throw MismatchedInputException.from(getParser(), javaType, _format(str, objArr));
    }

    public <T> T reportPropertyInputMismatch(JavaType javaType, String str, String str2, Object... objArr) throws JsonMappingException {
        return (T) reportPropertyInputMismatch(javaType.getRawClass(), str, str2, objArr);
    }

    public void reportWrongTokenException(Class<?> cls, JsonToken jsonToken, String str, Object... objArr) throws JsonMappingException {
        throw wrongTokenException(getParser(), cls, jsonToken, _format(str, objArr));
    }

    public JsonMappingException wrongTokenException(JsonParser jsonParser, Class<?> cls, JsonToken jsonToken, String str) {
        return MismatchedInputException.from(jsonParser, cls, _colonConcat("Unexpected token (" + jsonParser.getCurrentToken() + "), expected " + jsonToken, str));
    }

    public <T> T reportInputMismatch(BeanProperty beanProperty, String str, Object... objArr) throws JsonMappingException {
        MismatchedInputException from = MismatchedInputException.from(getParser(), beanProperty == null ? null : beanProperty.getType(), _format(str, objArr));
        if (beanProperty != null) {
            AnnotatedMember member = beanProperty.getMember();
            if (member != null) {
                from.prependPath(member.getDeclaringClass(), beanProperty.getName());
                throw from;
            }
            throw from;
        }
        throw from;
    }

    @Deprecated
    public void reportWrongTokenException(JsonParser jsonParser, JsonToken jsonToken, String str, Object... objArr) throws JsonMappingException {
        throw wrongTokenException(jsonParser, jsonToken, _format(str, objArr));
    }

    @Deprecated
    public JsonMappingException wrongTokenException(JsonParser jsonParser, JsonToken jsonToken, String str) {
        return wrongTokenException(jsonParser, (JavaType) null, jsonToken, str);
    }

    public DeserializationContext(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory) {
        this._cache = deserializationContext._cache;
        this._factory = deserializerFactory;
        this._config = deserializationContext._config;
        this._featureFlags = deserializationContext._featureFlags;
        this._view = deserializationContext._view;
        this._parser = deserializationContext._parser;
        this._injectableValues = deserializationContext._injectableValues;
        this._attributes = deserializationContext._attributes;
    }

    public JsonMappingException instantiationException(Class<?> cls, String str) {
        return ValueInstantiationException.from(this._parser, c.l("Cannot construct instance of ", ClassUtil.nameOf(cls), ": ", str), constructType(cls));
    }

    public DeserializationContext(DeserializationContext deserializationContext, DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues) {
        this._cache = deserializationContext._cache;
        this._factory = deserializationContext._factory;
        this._config = deserializationConfig;
        this._featureFlags = deserializationConfig.getDeserializationFeatures();
        this._view = deserializationConfig.getActiveView();
        this._parser = jsonParser;
        this._injectableValues = injectableValues;
        this._attributes = deserializationConfig.getAttributes();
    }

    public DeserializationContext(DeserializationContext deserializationContext) {
        this._cache = new DeserializerCache();
        this._factory = deserializationContext._factory;
        this._config = deserializationContext._config;
        this._featureFlags = deserializationContext._featureFlags;
        this._view = deserializationContext._view;
        this._injectableValues = null;
    }
}
