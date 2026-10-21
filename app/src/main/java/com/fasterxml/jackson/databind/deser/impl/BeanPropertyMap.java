package com.fasterxml.jackson.databind.deser.impl;

import A.i;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class BeanPropertyMap implements Iterable<SettableBeanProperty>, Serializable {
    private static final long serialVersionUID = 2;
    private final Map<String, List<PropertyName>> _aliasDefs;
    private final Map<String, String> _aliasMapping;
    protected final boolean _caseInsensitive;
    private Object[] _hashArea;
    private int _hashMask;
    private final SettableBeanProperty[] _propsInOrder;
    private int _size;
    private int _spillCount;

    public BeanPropertyMap(boolean z6, Collection<SettableBeanProperty> collection, Map<String, List<PropertyName>> map) {
        this._caseInsensitive = z6;
        this._propsInOrder = (SettableBeanProperty[]) collection.toArray(new SettableBeanProperty[collection.size()]);
        this._aliasDefs = map;
        this._aliasMapping = _buildAliasMapping(map);
        init(collection);
    }

    private Map<String, String> _buildAliasMapping(Map<String, List<PropertyName>> map) {
        if (map == null || map.isEmpty()) {
            return Collections.EMPTY_MAP;
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<PropertyName>> entry : map.entrySet()) {
            String key = entry.getKey();
            if (this._caseInsensitive) {
                key = key.toLowerCase();
            }
            Iterator<PropertyName> it = entry.getValue().iterator();
            while (it.hasNext()) {
                String simpleName = it.next().getSimpleName();
                if (this._caseInsensitive) {
                    simpleName = simpleName.toLowerCase();
                }
                hashMap.put(simpleName, key);
            }
        }
        return hashMap;
    }

    private final SettableBeanProperty _find2(String str, int i2, Object obj) {
        if (obj == null) {
            return _findWithAlias(this._aliasMapping.get(str));
        }
        int i7 = this._hashMask + 1;
        int i8 = ((i2 >> 1) + i7) << 1;
        Object obj2 = this._hashArea[i8];
        if (str.equals(obj2)) {
            return (SettableBeanProperty) this._hashArea[i8 + 1];
        }
        if (obj2 != null) {
            int i9 = (i7 + (i7 >> 1)) << 1;
            int i10 = this._spillCount + i9;
            while (i9 < i10) {
                Object obj3 = this._hashArea[i9];
                if (obj3 == str || str.equals(obj3)) {
                    return (SettableBeanProperty) this._hashArea[i9 + 1];
                }
                i9 += 2;
            }
        }
        return _findWithAlias(this._aliasMapping.get(str));
    }

    private SettableBeanProperty _find2ViaAlias(String str, int i2, Object obj) {
        int i7 = this._hashMask + 1;
        int i8 = ((i2 >> 1) + i7) << 1;
        Object obj2 = this._hashArea[i8];
        if (str.equals(obj2)) {
            return (SettableBeanProperty) this._hashArea[i8 + 1];
        }
        if (obj2 == null) {
            return null;
        }
        int i9 = (i7 + (i7 >> 1)) << 1;
        int i10 = this._spillCount + i9;
        while (i9 < i10) {
            Object obj3 = this._hashArea[i9];
            if (obj3 == str || str.equals(obj3)) {
                return (SettableBeanProperty) this._hashArea[i9 + 1];
            }
            i9 += 2;
        }
        return null;
    }

    private final int _findFromOrdered(SettableBeanProperty settableBeanProperty) {
        int length = this._propsInOrder.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (this._propsInOrder[i2] == settableBeanProperty) {
                return i2;
            }
        }
        throw new IllegalStateException("Illegal state: property '" + settableBeanProperty.getName() + "' missing from _propsInOrder");
    }

    private final int _findIndexInHash(String str) {
        int _hashCode = _hashCode(str);
        int i2 = _hashCode << 1;
        if (str.equals(this._hashArea[i2])) {
            return i2 + 1;
        }
        int i7 = this._hashMask + 1;
        int i8 = ((_hashCode >> 1) + i7) << 1;
        if (str.equals(this._hashArea[i8])) {
            return i8 + 1;
        }
        int i9 = (i7 + (i7 >> 1)) << 1;
        int i10 = this._spillCount + i9;
        while (i9 < i10) {
            if (str.equals(this._hashArea[i9])) {
                return i9 + 1;
            }
            i9 += 2;
        }
        return -1;
    }

    private SettableBeanProperty _findWithAlias(String str) {
        if (str == null) {
            return null;
        }
        int _hashCode = _hashCode(str);
        int i2 = _hashCode << 1;
        Object obj = this._hashArea[i2];
        if (str.equals(obj)) {
            return (SettableBeanProperty) this._hashArea[i2 + 1];
        }
        if (obj == null) {
            return null;
        }
        return _find2ViaAlias(str, _hashCode, obj);
    }

    private final int _hashCode(String str) {
        return str.hashCode() & this._hashMask;
    }

    private List<SettableBeanProperty> _properties() {
        ArrayList arrayList = new ArrayList(this._size);
        int length = this._hashArea.length;
        for (int i2 = 1; i2 < length; i2 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i2];
            if (settableBeanProperty != null) {
                arrayList.add(settableBeanProperty);
            }
        }
        return arrayList;
    }

    public static BeanPropertyMap construct(Collection<SettableBeanProperty> collection, boolean z6, Map<String, List<PropertyName>> map) {
        return new BeanPropertyMap(z6, collection, map);
    }

    private static final int findSize(int i2) {
        if (i2 <= 5) {
            return 8;
        }
        if (i2 <= 12) {
            return 16;
        }
        int i7 = 32;
        while (i7 < i2 + (i2 >> 2)) {
            i7 += i7;
        }
        return i7;
    }

    public SettableBeanProperty _rename(SettableBeanProperty settableBeanProperty, NameTransformer nameTransformer) {
        JsonDeserializer<Object> unwrappingDeserializer;
        if (settableBeanProperty == null) {
            return settableBeanProperty;
        }
        SettableBeanProperty withSimpleName = settableBeanProperty.withSimpleName(nameTransformer.transform(settableBeanProperty.getName()));
        JsonDeserializer<Object> valueDeserializer = withSimpleName.getValueDeserializer();
        return (valueDeserializer == null || (unwrappingDeserializer = valueDeserializer.unwrappingDeserializer(nameTransformer)) == valueDeserializer) ? withSimpleName : withSimpleName.withValueDeserializer(unwrappingDeserializer);
    }

    public BeanPropertyMap assignIndexes() {
        int length = this._hashArea.length;
        int i2 = 0;
        for (int i7 = 1; i7 < length; i7 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i7];
            if (settableBeanProperty != null) {
                settableBeanProperty.assignIndex(i2);
                i2++;
            }
        }
        return this;
    }

    public SettableBeanProperty find(int i2) {
        int length = this._hashArea.length;
        for (int i7 = 1; i7 < length; i7 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i7];
            if (settableBeanProperty != null && i2 == settableBeanProperty.getPropertyIndex()) {
                return settableBeanProperty;
            }
        }
        return null;
    }

    public boolean findDeserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        SettableBeanProperty find = find(str);
        if (find == null) {
            return false;
        }
        try {
            find.deserializeAndSet(jsonParser, deserializationContext, obj);
            return true;
        } catch (Exception e3) {
            wrapAndThrow(e3, obj, str, deserializationContext);
            return true;
        }
    }

    public SettableBeanProperty[] getPropertiesInInsertionOrder() {
        return this._propsInOrder;
    }

    public final String getPropertyName(SettableBeanProperty settableBeanProperty) {
        boolean z6 = this._caseInsensitive;
        String name = settableBeanProperty.getName();
        return z6 ? name.toLowerCase() : name;
    }

    public boolean hasAliases() {
        return !this._aliasDefs.isEmpty();
    }

    public void init(Collection<SettableBeanProperty> collection) {
        int size = collection.size();
        this._size = size;
        int findSize = findSize(size);
        this._hashMask = findSize - 1;
        int i2 = (findSize >> 1) + findSize;
        Object[] objArr = new Object[i2 * 2];
        int i7 = 0;
        for (SettableBeanProperty settableBeanProperty : collection) {
            if (settableBeanProperty != null) {
                String propertyName = getPropertyName(settableBeanProperty);
                int _hashCode = _hashCode(propertyName);
                int i8 = _hashCode << 1;
                if (objArr[i8] != null) {
                    i8 = ((_hashCode >> 1) + findSize) << 1;
                    if (objArr[i8] != null) {
                        i8 = (i2 << 1) + i7;
                        i7 += 2;
                        if (i8 >= objArr.length) {
                            objArr = Arrays.copyOf(objArr, objArr.length + 4);
                        }
                    }
                }
                objArr[i8] = propertyName;
                objArr[i8 + 1] = settableBeanProperty;
            }
        }
        this._hashArea = objArr;
        this._spillCount = i7;
    }

    public boolean isCaseInsensitive() {
        return this._caseInsensitive;
    }

    @Override // java.lang.Iterable
    public Iterator<SettableBeanProperty> iterator() {
        return _properties().iterator();
    }

    public void remove(SettableBeanProperty settableBeanProperty) {
        ArrayList arrayList = new ArrayList(this._size);
        String propertyName = getPropertyName(settableBeanProperty);
        int length = this._hashArea.length;
        boolean z6 = false;
        for (int i2 = 1; i2 < length; i2 += 2) {
            Object[] objArr = this._hashArea;
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) objArr[i2];
            if (settableBeanProperty2 != null) {
                if (z6 || !(z6 = propertyName.equals(objArr[i2 - 1]))) {
                    arrayList.add(settableBeanProperty2);
                } else {
                    this._propsInOrder[_findFromOrdered(settableBeanProperty2)] = null;
                }
            }
        }
        if (z6) {
            init(arrayList);
            return;
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty.getName() + "' found, can't remove");
    }

    public BeanPropertyMap renameAll(NameTransformer nameTransformer) {
        if (nameTransformer == null || nameTransformer == NameTransformer.NOP) {
            return this;
        }
        int length = this._propsInOrder.length;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            SettableBeanProperty settableBeanProperty = this._propsInOrder[i2];
            if (settableBeanProperty == null) {
                arrayList.add(settableBeanProperty);
            } else {
                arrayList.add(_rename(settableBeanProperty, nameTransformer));
            }
        }
        return new BeanPropertyMap(this._caseInsensitive, arrayList, this._aliasDefs);
    }

    @Deprecated
    public void replace(SettableBeanProperty settableBeanProperty) {
        String propertyName = getPropertyName(settableBeanProperty);
        int _findIndexInHash = _findIndexInHash(propertyName);
        if (_findIndexInHash < 0) {
            throw new NoSuchElementException(i.l("No entry '", propertyName, "' found, can't replace"));
        }
        Object[] objArr = this._hashArea;
        SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) objArr[_findIndexInHash];
        objArr[_findIndexInHash] = settableBeanProperty;
        this._propsInOrder[_findFromOrdered(settableBeanProperty2)] = settableBeanProperty;
    }

    public int size() {
        return this._size;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Properties=[");
        Iterator<SettableBeanProperty> it = iterator();
        int i2 = 0;
        while (it.hasNext()) {
            SettableBeanProperty next = it.next();
            int i7 = i2 + 1;
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(next.getName());
            sb.append('(');
            sb.append(next.getType());
            sb.append(')');
            i2 = i7;
        }
        sb.append(']');
        if (!this._aliasDefs.isEmpty()) {
            sb.append("(aliases: ");
            sb.append(this._aliasDefs);
            sb.append(")");
        }
        return sb.toString();
    }

    public BeanPropertyMap withCaseInsensitivity(boolean z6) {
        return this._caseInsensitive == z6 ? this : new BeanPropertyMap(this, z6);
    }

    public BeanPropertyMap withProperty(SettableBeanProperty settableBeanProperty) {
        String propertyName = getPropertyName(settableBeanProperty);
        int length = this._hashArea.length;
        for (int i2 = 1; i2 < length; i2 += 2) {
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) this._hashArea[i2];
            if (settableBeanProperty2 != null && settableBeanProperty2.getName().equals(propertyName)) {
                return new BeanPropertyMap(this, settableBeanProperty, i2, _findFromOrdered(settableBeanProperty2));
            }
        }
        return new BeanPropertyMap(this, settableBeanProperty, propertyName, _hashCode(propertyName));
    }

    public BeanPropertyMap withoutProperties(Collection<String> collection) {
        if (collection.isEmpty()) {
            return this;
        }
        int length = this._propsInOrder.length;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            SettableBeanProperty settableBeanProperty = this._propsInOrder[i2];
            if (settableBeanProperty != null && !collection.contains(settableBeanProperty.getName())) {
                arrayList.add(settableBeanProperty);
            }
        }
        return new BeanPropertyMap(this._caseInsensitive, arrayList, this._aliasDefs);
    }

    public void wrapAndThrow(Throwable th, Object obj, String str, DeserializationContext deserializationContext) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        ClassUtil.throwIfError(th);
        boolean z6 = deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        if (th instanceof IOException) {
            if (!z6 || !(th instanceof JsonProcessingException)) {
                throw ((IOException) th);
            }
        } else if (!z6) {
            ClassUtil.throwIfRTE(th);
        }
        throw JsonMappingException.wrapWithPath(th, obj, str);
    }

    @Deprecated
    public static BeanPropertyMap construct(Collection<SettableBeanProperty> collection, boolean z6) {
        return construct(collection, z6, Collections.EMPTY_MAP);
    }

    public SettableBeanProperty find(String str) {
        if (str != null) {
            if (this._caseInsensitive) {
                str = str.toLowerCase();
            }
            int hashCode = str.hashCode() & this._hashMask;
            int i2 = hashCode << 1;
            Object obj = this._hashArea[i2];
            if (obj != str && !str.equals(obj)) {
                return _find2(str, hashCode, obj);
            }
            return (SettableBeanProperty) this._hashArea[i2 + 1];
        }
        throw new IllegalArgumentException("Cannot pass null property name");
    }

    private BeanPropertyMap(BeanPropertyMap beanPropertyMap, SettableBeanProperty settableBeanProperty, int i2, int i7) {
        this._caseInsensitive = beanPropertyMap._caseInsensitive;
        this._hashMask = beanPropertyMap._hashMask;
        this._size = beanPropertyMap._size;
        this._spillCount = beanPropertyMap._spillCount;
        this._aliasDefs = beanPropertyMap._aliasDefs;
        this._aliasMapping = beanPropertyMap._aliasMapping;
        Object[] objArr = beanPropertyMap._hashArea;
        this._hashArea = Arrays.copyOf(objArr, objArr.length);
        SettableBeanProperty[] settableBeanPropertyArr = beanPropertyMap._propsInOrder;
        SettableBeanProperty[] settableBeanPropertyArr2 = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, settableBeanPropertyArr.length);
        this._propsInOrder = settableBeanPropertyArr2;
        this._hashArea[i2] = settableBeanProperty;
        settableBeanPropertyArr2[i7] = settableBeanProperty;
    }

    public void replace(SettableBeanProperty settableBeanProperty, SettableBeanProperty settableBeanProperty2) {
        int length = this._hashArea.length;
        for (int i2 = 1; i2 <= length; i2 += 2) {
            Object[] objArr = this._hashArea;
            if (objArr[i2] == settableBeanProperty) {
                objArr[i2] = settableBeanProperty2;
                this._propsInOrder[_findFromOrdered(settableBeanProperty)] = settableBeanProperty2;
                return;
            }
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty.getName() + "' found, can't replace");
    }

    private BeanPropertyMap(BeanPropertyMap beanPropertyMap, SettableBeanProperty settableBeanProperty, String str, int i2) {
        this._caseInsensitive = beanPropertyMap._caseInsensitive;
        this._hashMask = beanPropertyMap._hashMask;
        this._size = beanPropertyMap._size;
        this._spillCount = beanPropertyMap._spillCount;
        this._aliasDefs = beanPropertyMap._aliasDefs;
        this._aliasMapping = beanPropertyMap._aliasMapping;
        Object[] objArr = beanPropertyMap._hashArea;
        this._hashArea = Arrays.copyOf(objArr, objArr.length);
        SettableBeanProperty[] settableBeanPropertyArr = beanPropertyMap._propsInOrder;
        int length = settableBeanPropertyArr.length;
        SettableBeanProperty[] settableBeanPropertyArr2 = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, length + 1);
        this._propsInOrder = settableBeanPropertyArr2;
        settableBeanPropertyArr2[length] = settableBeanProperty;
        int i7 = this._hashMask + 1;
        int i8 = i2 << 1;
        Object[] objArr2 = this._hashArea;
        if (objArr2[i8] != null) {
            i8 = ((i2 >> 1) + i7) << 1;
            if (objArr2[i8] != null) {
                int i9 = this._spillCount;
                i8 = ((i7 + (i7 >> 1)) << 1) + i9;
                this._spillCount = i9 + 2;
                if (i8 >= objArr2.length) {
                    this._hashArea = Arrays.copyOf(objArr2, objArr2.length + 4);
                }
            }
        }
        Object[] objArr3 = this._hashArea;
        objArr3[i8] = str;
        objArr3[i8 + 1] = settableBeanProperty;
    }

    @Deprecated
    public BeanPropertyMap(boolean z6, Collection<SettableBeanProperty> collection) {
        this(z6, collection, Collections.EMPTY_MAP);
    }

    public BeanPropertyMap(BeanPropertyMap beanPropertyMap, boolean z6) {
        this._caseInsensitive = z6;
        this._aliasDefs = beanPropertyMap._aliasDefs;
        this._aliasMapping = beanPropertyMap._aliasMapping;
        SettableBeanProperty[] settableBeanPropertyArr = beanPropertyMap._propsInOrder;
        SettableBeanProperty[] settableBeanPropertyArr2 = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, settableBeanPropertyArr.length);
        this._propsInOrder = settableBeanPropertyArr2;
        init(Arrays.asList(settableBeanPropertyArr2));
    }
}
