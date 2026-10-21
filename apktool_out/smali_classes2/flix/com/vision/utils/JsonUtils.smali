.class public Lflix/com/vision/utils/JsonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static availableOnStreamingServices(Lcom/google/gson/JsonElement;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v1, "results"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    move v1, v0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_3

    .line 22
    .line 23
    const-string v2, "US"

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    return v3

    .line 37
    :cond_0
    const-string v2, "GB"

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    return v3

    .line 50
    :cond_1
    const-string v2, "CA"

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 57
    .line 58
    .line 59
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    return v3

    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    :cond_3
    return v0
.end method

.method public static getDirector(Lcom/google/gson/JsonElement;)Lflix/com/vision/models/Writer;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "crew"

    .line 7
    .line 8
    invoke-static {v1, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, ""

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-ge v3, v4, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "job"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "director"

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    const-string v5, "name"

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    move-object v1, v5

    .line 67
    :cond_0
    const-string v5, "id"

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    new-instance v6, Lflix/com/vision/models/Writer;

    .line 78
    .line 79
    invoke-direct {v6}, Lflix/com/vision/models/Writer;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_1

    .line 87
    .line 88
    const-string v1, "N/A"

    .line 89
    .line 90
    :cond_1
    invoke-virtual {v6, v1}, Lflix/com/vision/models/Writer;->setName(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v4, v5}, Lflix/com/vision/models/Writer;->setId(J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lflix/com/vision/models/Writer;

    .line 107
    .line 108
    return-object p0
.end method

.method public static getLogoPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v1, "logos"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-ge v1, v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "iso_639_1"

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "en"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v0, "file_path"

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    return-object v0
.end method

.method public static getWriters(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "crew"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, ""

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "department"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "writing"

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    const-string v4, "name"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    const-string v4, "certification "

    .line 62
    .line 63
    invoke-static {v0, v3, v4}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const/4 v0, 0x1

    .line 84
    invoke-static {v0, v1, p0}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :cond_3
    :goto_1
    const-string p0, "N/A"

    .line 90
    .line 91
    return-object p0
.end method

.method public static getWritersTV(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "crew"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, ""

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "department"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "writing"

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    const-string v3, "name"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    const-string v3, "\n"

    .line 61
    .line 62
    invoke-static {v0, v2, v3}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    return-object p0

    .line 83
    :cond_3
    :goto_1
    const-string p0, "N/A"

    .line 84
    .line 85
    return-object p0
.end method

.method public static getYearSplit(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lh5/n;->isEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "-"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x0

    .line 21
    aget-object p0, p0, v0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    :goto_0
    const-string p0, ""

    .line 25
    .line 26
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static parse123MoviesHubearch(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "content"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, ".html"

    .line 20
    .line 21
    const-string v1, "href"

    .line 22
    .line 23
    const-string v2, "ss-title"

    .line 24
    .line 25
    const-string v3, "-"

    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/b;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lorg/jsoup/nodes/b;

    .line 50
    .line 51
    invoke-virtual {v6}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    const-string v8, "("

    .line 56
    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_0

    .line 62
    .line 63
    invoke-virtual {v7, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_0

    .line 68
    .line 69
    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_0

    .line 82
    .line 83
    invoke-virtual {v6, v1}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_1
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/b;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_3

    .line 109
    .line 110
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lorg/jsoup/nodes/b;

    .line 115
    .line 116
    invoke-virtual {v5}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_2

    .line 133
    .line 134
    invoke-virtual {v5, v1}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :cond_3
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/b;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-eqz p2, :cond_5

    .line 160
    .line 161
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    check-cast p2, Lorg/jsoup/nodes/b;

    .line 166
    .line 167
    invoke-virtual {p2}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {v2}, Lh5/n;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {p1}, Lh5/n;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_4

    .line 184
    .line 185
    invoke-virtual {p2, v1}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0

    .line 198
    :cond_5
    return-object v4
.end method

.method public static parseAdultCategories(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/adult/AdultCategory;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "categories"

    .line 11
    .line 12
    invoke-static {v1, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "title"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "url"

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "img_url"

    .line 52
    .line 53
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    new-instance v5, Lflix/com/vision/models/adult/AdultCategory;

    .line 62
    .line 63
    invoke-direct {v5}, Lflix/com/vision/models/adult/AdultCategory;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v3, v5, Lflix/com/vision/models/adult/AdultCategory;->title:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v4, v5, Lflix/com/vision/models/adult/AdultCategory;->url:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v2, v5, Lflix/com/vision/models/adult/AdultCategory;->img_url:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    return-object v0
.end method

.method public static parseCast(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Cast;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "profile_path"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const-string v2, "cast"

    .line 8
    .line 9
    invoke-static {v2, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, "name"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const-string v6, "gender"

    .line 44
    .line 45
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const-string v7, "character"

    .line 54
    .line 55
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const-string v8, "id"

    .line 64
    .line 65
    invoke-virtual {v4, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 70
    .line 71
    .line 72
    move-result-wide v8

    .line 73
    :try_start_0
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-nez v10, :cond_1

    .line 82
    .line 83
    new-instance v10, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    sget-object v11, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v11, "w185"

    .line 94
    .line 95
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_1

    .line 114
    :catch_0
    :cond_1
    move-object v4, v1

    .line 115
    :goto_1
    new-instance v10, Lflix/com/vision/models/Cast;

    .line 116
    .line 117
    invoke-direct {v10}, Lflix/com/vision/models/Cast;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v5}, Lflix/com/vision/models/Cast;->setName(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10, v8, v9}, Lflix/com/vision/models/Cast;->setId(J)V

    .line 124
    .line 125
    .line 126
    iput v6, v10, Lflix/com/vision/models/Cast;->gender:I

    .line 127
    .line 128
    iput-object v7, v10, Lflix/com/vision/models/Cast;->CharacterName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v10, v4}, Lflix/com/vision/models/Cast;->setImg_url(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    return-object v2
.end method

.method public static parseCastMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Movie;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "cast"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2, p1}, Lflix/com/vision/utils/JsonUtils;->parseMovieData(Lcom/google/gson/JsonObject;I)Lflix/com/vision/models/Movie;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0
.end method

.method public static parseCategory(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Genre;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const-string v0, "genres"

    .line 4
    .line 5
    invoke-static {v0, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "id"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "name"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/16 v4, 0x10

    .line 60
    .line 61
    if-eq v2, v4, :cond_0

    .line 62
    .line 63
    new-instance v4, Lflix/com/vision/models/Genre;

    .line 64
    .line 65
    invoke-direct {v4}, Lflix/com/vision/models/Genre;-><init>()V

    .line 66
    .line 67
    .line 68
    iput v2, v4, Lflix/com/vision/models/Genre;->id:I

    .line 69
    .line 70
    iput-object v3, v4, Lflix/com/vision/models/Genre;->name:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    return-object v0

    .line 79
    :cond_2
    const/4 p0, 0x0

    .line 80
    return-object p0
.end method

.method public static parseCollectionMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Movie;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "parts"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2, p1}, Lflix/com/vision/utils/JsonUtils;->parseMovieData(Lcom/google/gson/JsonObject;I)Lflix/com/vision/models/Movie;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0
.end method

.method public static parseDataHindi(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;
    .locals 4

    .line 1
    const-string v0, "(?s)(?:(?:let|var|const)\\s+\\w+\\s*=\\s*)?(?:new\\s+\\w+\\s*\\(\\s*)?(\\{\"file\".*?\\})\\)?\\s*;"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "file"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "key"

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "host"

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "href"

    .line 61
    .line 62
    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance v3, Lflix/com/vision/models/hindi/MovieRequest;

    .line 71
    .line 72
    invoke-direct {v3}, Lflix/com/vision/models/hindi/MovieRequest;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, v3, Lflix/com/vision/models/hindi/MovieRequest;->data:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v1, v3, Lflix/com/vision/models/hindi/MovieRequest;->token:Ljava/lang/String;

    .line 78
    .line 79
    iput-object p0, v3, Lflix/com/vision/models/hindi/MovieRequest;->href:Ljava/lang/String;

    .line 80
    .line 81
    iput-object v2, v3, Lflix/com/vision/models/hindi/MovieRequest;->host:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    return-object v3

    .line 84
    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :cond_0
    const/4 p0, 0x0

    .line 89
    return-object p0
.end method

.method public static parseDirectorMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Movie;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "crew"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "job"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "director"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-static {v2, p1}, Lflix/com/vision/utils/JsonUtils;->parseMovieData(Lcom/google/gson/JsonObject;I)Lflix/com/vision/models/Movie;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-object v0
.end method

.method public static parseHDOSearch(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "content"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "ss-title"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const-string v3, "-"

    .line 34
    .line 35
    const-string v4, ""

    .line 36
    .line 37
    const-string v5, "href"

    .line 38
    .line 39
    const-string v6, ".html"

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lorg/jsoup/nodes/b;

    .line 48
    .line 49
    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    invoke-virtual {v2, v5}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    array-length v3, v2

    .line 76
    add-int/lit8 v3, v3, -0x1

    .line 77
    .line 78
    aget-object v2, v2, v3

    .line 79
    .line 80
    if-nez p2, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const-string v3, "https://solarmoviehd.ru/ajax/movie_get_info/"

    .line 84
    .line 85
    invoke-static {v3, v2, v6}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    :try_start_0
    invoke-static {v3}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lh6/h;

    .line 94
    .line 95
    invoke-virtual {v3}, Lh6/h;->get()Lj6/h;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const-string v4, "jtip-top"

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/b;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/b;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const-string v4, "jt-info"

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/b;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_0

    .line 124
    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Lorg/jsoup/nodes/b;

    .line 130
    .line 131
    invoke-virtual {v4}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    const-string v5, "min"

    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-nez v5, :cond_2

    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-lez v5, :cond_2

    .line 152
    .line 153
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    if-eqz v4, :cond_2

    .line 158
    .line 159
    :goto_0
    return-object v2

    .line 160
    :catch_0
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    .line 163
    .line 164
    return-object v2

    .line 165
    :cond_3
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-eqz p2, :cond_5

    .line 178
    .line 179
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    check-cast p2, Lorg/jsoup/nodes/b;

    .line 184
    .line 185
    invoke-virtual {p2}, Lorg/jsoup/nodes/b;->text()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v0}, Lh5/n;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {p1}, Lh5/n;->removeSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_4

    .line 202
    .line 203
    invoke-virtual {p2, v5}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    array-length p1, p0

    .line 220
    add-int/lit8 p1, p1, -0x1

    .line 221
    .line 222
    aget-object p0, p0, p1

    .line 223
    .line 224
    return-object p0

    .line 225
    :cond_5
    const/4 p0, 0x0

    .line 226
    return-object p0
.end method

.method public static parseLinks(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/VideoSource;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "urlvideo"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Lflix/com/vision/models/VideoSource;

    .line 36
    .line 37
    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    iput-boolean v4, v3, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, LV4/a;->checkLinkLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, "- HQ"

    .line 58
    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    return-object v0
.end method

.method public static parseListEpisode(Lcom/google/gson/JsonElement;Z)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Episode;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "episodes"

    .line 9
    .line 10
    move-object/from16 v3, p0

    .line 11
    .line 12
    invoke-static {v2, v3}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-ge v4, v5, :cond_5

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v7, "Episode "

    .line 35
    .line 36
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v6, ""

    .line 45
    .line 46
    const/4 v7, 0x1

    .line 47
    const/4 v8, 0x0

    .line 48
    :try_start_0
    const-string v9, "air_date"

    .line 49
    .line 50
    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 58
    if-eqz v9, :cond_1

    .line 59
    .line 60
    :try_start_1
    new-instance v10, Ljava/text/SimpleDateFormat;

    .line 61
    .line 62
    const-string v11, "yyyy-MM-dd"

    .line 63
    .line 64
    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v10, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    new-instance v11, Ljava/util/Date;

    .line 72
    .line 73
    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10, v11}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    .line 77
    .line 78
    .line 79
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    if-lez v10, :cond_0

    .line 81
    .line 82
    move v10, v3

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    move v10, v7

    .line 85
    :goto_1
    if-nez v10, :cond_2

    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    :cond_1
    move v10, v7

    .line 91
    :cond_2
    :try_start_2
    const-string v11, "episode_number"

    .line 92
    .line 93
    invoke-virtual {v5, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    invoke-virtual {v5, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    const-string v11, "still_path"

    .line 109
    .line 110
    invoke-virtual {v5, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 118
    if-eqz v11, :cond_3

    .line 119
    .line 120
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    sget-object v13, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v13, "w500"

    .line 131
    .line 132
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    goto :goto_3

    .line 143
    :catch_1
    move v13, v3

    .line 144
    move-object v5, v8

    .line 145
    move-object v12, v5

    .line 146
    :goto_2
    move-object v8, v11

    .line 147
    goto :goto_5

    .line 148
    :cond_3
    :goto_3
    invoke-virtual {v5, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 156
    :try_start_4
    const-string v13, "overview"

    .line 157
    .line 158
    invoke-virtual {v5, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    const-string v13, "id"

    .line 167
    .line 168
    invoke-virtual {v5, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 173
    .line 174
    .line 175
    move-result v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 176
    :try_start_5
    const-string v14, "runtime"

    .line 177
    .line 178
    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-lez v5, :cond_4

    .line 187
    .line 188
    new-instance v14, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v15, "("

    .line 194
    .line 195
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v5, " min)"

    .line 202
    .line 203
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 210
    goto :goto_6

    .line 211
    :catch_2
    :goto_4
    move-object v5, v8

    .line 212
    goto :goto_2

    .line 213
    :catch_3
    move v13, v3

    .line 214
    goto :goto_4

    .line 215
    :catch_4
    move v13, v3

    .line 216
    move-object v5, v8

    .line 217
    move-object v12, v5

    .line 218
    goto :goto_5

    .line 219
    :catch_5
    move v13, v3

    .line 220
    move v10, v7

    .line 221
    move-object v5, v8

    .line 222
    move-object v9, v5

    .line 223
    move-object v12, v9

    .line 224
    :goto_5
    move-object v11, v8

    .line 225
    move-object v8, v5

    .line 226
    :cond_4
    :goto_6
    new-instance v5, Lflix/com/vision/models/Episode;

    .line 227
    .line 228
    invoke-direct {v5}, Lflix/com/vision/models/Episode;-><init>()V

    .line 229
    .line 230
    .line 231
    iput v7, v5, Lflix/com/vision/models/Episode;->number:I

    .line 232
    .line 233
    iput v13, v5, Lflix/com/vision/models/Episode;->tmdb_id:I

    .line 234
    .line 235
    iput-object v11, v5, Lflix/com/vision/models/Episode;->img_url:Ljava/lang/String;

    .line 236
    .line 237
    iput-object v12, v5, Lflix/com/vision/models/Episode;->title:Ljava/lang/String;

    .line 238
    .line 239
    iput-boolean v10, v5, Lflix/com/vision/models/Episode;->aired:Z

    .line 240
    .line 241
    iput-object v8, v5, Lflix/com/vision/models/Episode;->plot:Ljava/lang/String;

    .line 242
    .line 243
    iput-object v9, v5, Lflix/com/vision/models/Episode;->date:Ljava/lang/String;

    .line 244
    .line 245
    iput-object v6, v5, Lflix/com/vision/models/Episode;->runtime:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_5
    return-object v1
.end method

.method public static parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Movie;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "results"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :try_start_0
    invoke-static {v2, p1}, Lflix/com/vision/utils/JsonUtils;->parseMovieSimple(Lcom/google/gson/JsonObject;I)Lflix/com/vision/models/Movie;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    const-string v2, ""

    .line 40
    .line 41
    invoke-static {v2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-object v0
.end method

.method private static parseMovie(Lcom/google/gson/JsonObject;I)Lflix/com/vision/models/Movie;
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v2, "runtime"

    .line 4
    .line 5
    const-string v3, "revenue"

    .line 6
    .line 7
    const-string v4, "belongs_to_collection"

    .line 8
    .line 9
    const-string v5, "adult"

    .line 10
    .line 11
    const-string v6, "imdb_id"

    .line 12
    .line 13
    new-instance v7, Lflix/com/vision/models/Movie;

    .line 14
    .line 15
    invoke-direct {v7}, Lflix/com/vision/models/Movie;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v8, "id"

    .line 19
    .line 20
    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 25
    .line 26
    .line 27
    move-result-wide v9

    .line 28
    :try_start_0
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    if-eqz v12, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 39
    .line 40
    .line 41
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    :cond_0
    const/4 v5, 0x0

    .line 44
    :goto_0
    const-string v12, "overview"

    .line 45
    .line 46
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    const-string v14, "poster_path"

    .line 55
    .line 56
    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 57
    .line 58
    .line 59
    move-result-object v15

    .line 60
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 61
    .line 62
    .line 63
    move-result v15

    .line 64
    const-string v11, "w500"

    .line 65
    .line 66
    move/from16 v17, v15

    .line 67
    .line 68
    const-string v15, "w780"

    .line 69
    .line 70
    move-object/from16 v18, v13

    .line 71
    .line 72
    const-string v13, ""

    .line 73
    .line 74
    if-nez v17, :cond_1

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    move-object/from16 v17, v6

    .line 82
    .line 83
    sget-object v6, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    sget-boolean v6, Lflix/com/vision/App;->G:Z

    .line 107
    .line 108
    if-nez v6, :cond_2

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    sget-object v6, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    goto :goto_1

    .line 139
    :cond_1
    move-object/from16 v17, v6

    .line 140
    .line 141
    move-object v1, v13

    .line 142
    :cond_2
    :goto_1
    const-string v6, "name"

    .line 143
    .line 144
    const/16 v19, 0x0

    .line 145
    .line 146
    const-wide/16 v20, 0x0

    .line 147
    .line 148
    if-nez p1, :cond_5

    .line 149
    .line 150
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v22

    .line 154
    if-eqz v22, :cond_5

    .line 155
    .line 156
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v4, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v22

    .line 164
    if-eqz v22, :cond_3

    .line 165
    .line 166
    invoke-virtual {v4, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 171
    .line 172
    .line 173
    move-result-wide v22
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    goto :goto_2

    .line 175
    :catch_1
    move-wide/from16 v22, v20

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_3
    move-wide/from16 v22, v20

    .line 179
    .line 180
    :goto_2
    :try_start_2
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-eqz v8, :cond_4

    .line 185
    .line 186
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 194
    goto :goto_4

    .line 195
    :catch_2
    :cond_4
    :goto_3
    move-object/from16 v4, v19

    .line 196
    .line 197
    :goto_4
    move-wide/from16 v43, v22

    .line 198
    .line 199
    move-wide/from16 v22, v9

    .line 200
    .line 201
    move-wide/from16 v8, v43

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_5
    move-object/from16 v4, v19

    .line 205
    .line 206
    move-wide/from16 v22, v20

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :goto_5
    const-string v10, "backdrop_path"

    .line 210
    .line 211
    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v24

    .line 215
    if-eqz v24, :cond_6

    .line 216
    .line 217
    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    move-object/from16 v24, v1

    .line 226
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    move/from16 v25, v5

    .line 233
    .line 234
    sget-object v5, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v5, "w1280"

    .line 240
    .line 241
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    goto :goto_6

    .line 252
    :cond_6
    move-object/from16 v24, v1

    .line 253
    .line 254
    move/from16 v25, v5

    .line 255
    .line 256
    move-object v1, v13

    .line 257
    move-object v10, v1

    .line 258
    :goto_6
    const-string v5, "last_air_date"

    .line 259
    .line 260
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v26

    .line 264
    if-eqz v26, :cond_7

    .line 265
    .line 266
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    goto :goto_7

    .line 275
    :cond_7
    move-object/from16 v5, v19

    .line 276
    .line 277
    :goto_7
    :try_start_3
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v26

    .line 281
    if-eqz v26, :cond_8

    .line 282
    .line 283
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 288
    .line 289
    .line 290
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 291
    move-object/from16 v26, v4

    .line 292
    .line 293
    int-to-long v3, v3

    .line 294
    move-wide/from16 v20, v3

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :catch_3
    :cond_8
    move-object/from16 v26, v4

    .line 298
    .line 299
    :goto_8
    move-wide/from16 v3, v20

    .line 300
    .line 301
    :try_start_4
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v20

    .line 305
    if-eqz v20, :cond_9

    .line 306
    .line 307
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 312
    .line 313
    .line 314
    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 315
    :goto_9
    move-object/from16 v20, v1

    .line 316
    .line 317
    goto :goto_a

    .line 318
    :catch_4
    :cond_9
    const/4 v2, 0x0

    .line 319
    goto :goto_9

    .line 320
    :goto_a
    const-string v1, ", "

    .line 321
    .line 322
    move-object/from16 v21, v5

    .line 323
    .line 324
    const/16 v27, -0x1

    .line 325
    .line 326
    if-nez p1, :cond_b

    .line 327
    .line 328
    const-string v11, "title"

    .line 329
    .line 330
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    const-string v12, "release_date"

    .line 339
    .line 340
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 341
    .line 342
    .line 343
    move-result-object v14

    .line 344
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v14

    .line 348
    invoke-static {v14}, Lflix/com/vision/utils/JsonUtils;->getYearSplit(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v14

    .line 352
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 353
    .line 354
    .line 355
    move-result-object v12

    .line 356
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v12

    .line 360
    :try_start_5
    const-string v15, "yyyy-MM-dd"

    .line 361
    .line 362
    invoke-static {v12, v15}, Lh5/n;->stringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 363
    .line 364
    .line 365
    move-result-object v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 366
    const/16 v28, 0x1

    .line 367
    .line 368
    :try_start_6
    new-instance v5, Ljava/util/Date;

    .line 369
    .line 370
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v5, v15}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 374
    .line 375
    .line 376
    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 377
    xor-int/lit8 v5, v5, 0x1

    .line 378
    .line 379
    goto :goto_b

    .line 380
    :catch_5
    const/16 v28, 0x1

    .line 381
    .line 382
    :catch_6
    move/from16 v5, v28

    .line 383
    .line 384
    :goto_b
    iput-boolean v5, v7, Lflix/com/vision/models/Movie;->is_released:Z

    .line 385
    .line 386
    if-eqz v12, :cond_a

    .line 387
    .line 388
    iput-object v12, v7, Lflix/com/vision/models/Movie;->raw_release_date:Ljava/lang/String;

    .line 389
    .line 390
    :cond_a
    move/from16 v31, v2

    .line 391
    .line 392
    move-object/from16 v30, v10

    .line 393
    .line 394
    move-object v2, v13

    .line 395
    move-object/from16 v32, v2

    .line 396
    .line 397
    move-object/from16 v39, v1

    .line 398
    .line 399
    move-wide/from16 v41, v3

    .line 400
    .line 401
    move-object/from16 v40, v6

    .line 402
    .line 403
    move/from16 v1, v27

    .line 404
    .line 405
    const/16 v16, 0x0

    .line 406
    .line 407
    goto/16 :goto_16

    .line 408
    .line 409
    :cond_b
    const/16 v28, 0x1

    .line 410
    .line 411
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    move-object/from16 v29, v5

    .line 420
    .line 421
    const-string v5, "created_by"

    .line 422
    .line 423
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    move/from16 v31, v2

    .line 432
    .line 433
    move-object/from16 v30, v10

    .line 434
    .line 435
    move-object v2, v13

    .line 436
    move-object/from16 v32, v2

    .line 437
    .line 438
    const/4 v10, 0x0

    .line 439
    :goto_c
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    .line 440
    .line 441
    .line 442
    move-result v13

    .line 443
    if-ge v10, v13, :cond_d

    .line 444
    .line 445
    invoke-virtual {v5, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 446
    .line 447
    .line 448
    move-result-object v13

    .line 449
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 450
    .line 451
    .line 452
    move-result-object v13

    .line 453
    invoke-virtual {v13, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 454
    .line 455
    .line 456
    move-result-object v13

    .line 457
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v13

    .line 461
    if-eqz v13, :cond_c

    .line 462
    .line 463
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 464
    .line 465
    .line 466
    move-result v33

    .line 467
    if-nez v33, :cond_c

    .line 468
    .line 469
    invoke-static {v2, v13, v1}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 474
    .line 475
    goto :goto_c

    .line 476
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    if-eqz v5, :cond_e

    .line 485
    .line 486
    const-string v2, "N/A"

    .line 487
    .line 488
    :cond_e
    move/from16 v10, v28

    .line 489
    .line 490
    const/4 v5, 0x0

    .line 491
    invoke-static {v10, v5, v2}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    const-string v5, "first_air_date"

    .line 496
    .line 497
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 498
    .line 499
    .line 500
    move-result-object v10

    .line 501
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v10

    .line 505
    invoke-static {v10}, Lflix/com/vision/utils/JsonUtils;->getYearSplit(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v10

    .line 509
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    const-string v13, "number_of_seasons"

    .line 518
    .line 519
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 520
    .line 521
    .line 522
    move-result v33

    .line 523
    if-eqz v33, :cond_f

    .line 524
    .line 525
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 526
    .line 527
    .line 528
    move-result-object v13

    .line 529
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 530
    .line 531
    .line 532
    move-result v27

    .line 533
    :cond_f
    const-string v13, "seasons"

    .line 534
    .line 535
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 536
    .line 537
    .line 538
    move-result v13

    .line 539
    if-eqz v13, :cond_10

    .line 540
    .line 541
    const-string v13, "seasons"

    .line 542
    .line 543
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 544
    .line 545
    .line 546
    move-result-object v13

    .line 547
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 548
    .line 549
    .line 550
    move-result-object v19

    .line 551
    :cond_10
    move-object/from16 v13, v19

    .line 552
    .line 553
    move-object/from16 v19, v2

    .line 554
    .line 555
    move-object/from16 v34, v5

    .line 556
    .line 557
    const/4 v2, 0x0

    .line 558
    const/16 v33, 0x0

    .line 559
    .line 560
    :goto_d
    invoke-virtual {v13}, Lcom/google/gson/JsonArray;->size()I

    .line 561
    .line 562
    .line 563
    move-result v5

    .line 564
    if-ge v2, v5, :cond_15

    .line 565
    .line 566
    :try_start_7
    invoke-virtual {v13, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 571
    .line 572
    .line 573
    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10

    .line 574
    move/from16 v35, v2

    .line 575
    .line 576
    :try_start_8
    const-string v2, "season_number"

    .line 577
    .line 578
    invoke-virtual {v5, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 583
    .line 584
    .line 585
    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f

    .line 586
    move-object/from16 v36, v10

    .line 587
    .line 588
    const/4 v10, 0x1

    .line 589
    if-ge v2, v10, :cond_11

    .line 590
    .line 591
    move-object/from16 v39, v1

    .line 592
    .line 593
    move-wide/from16 v41, v3

    .line 594
    .line 595
    move-object/from16 v40, v6

    .line 596
    .line 597
    :goto_e
    move-object/from16 v38, v12

    .line 598
    .line 599
    move-object/from16 v37, v13

    .line 600
    .line 601
    const/16 v16, 0x0

    .line 602
    .line 603
    goto/16 :goto_15

    .line 604
    .line 605
    :cond_11
    add-int/lit8 v10, v33, 0x1

    .line 606
    .line 607
    move-object/from16 v37, v13

    .line 608
    .line 609
    :try_start_9
    const-string v13, "episode_count"

    .line 610
    .line 611
    invoke-virtual {v5, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 612
    .line 613
    .line 614
    move-result-object v13

    .line 615
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 616
    .line 617
    .line 618
    move-result v13

    .line 619
    invoke-virtual {v5, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 620
    .line 621
    .line 622
    move-result-object v33
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    .line 623
    move-object/from16 v38, v12

    .line 624
    .line 625
    :try_start_a
    invoke-virtual/range {v33 .. v33}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v12
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    .line 629
    move-object/from16 v39, v1

    .line 630
    .line 631
    :try_start_b
    new-instance v1, Lflix/com/vision/models/Season;

    .line 632
    .line 633
    invoke-direct {v1}, Lflix/com/vision/models/Season;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 634
    .line 635
    .line 636
    :try_start_c
    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 637
    .line 638
    .line 639
    move-result-object v33
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 640
    if-eqz v33, :cond_13

    .line 641
    .line 642
    move-object/from16 v40, v6

    .line 643
    .line 644
    :try_start_d
    new-instance v6, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 647
    .line 648
    .line 649
    move-wide/from16 v41, v3

    .line 650
    .line 651
    :try_start_e
    sget-object v3, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 652
    .line 653
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v3

    .line 667
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v3

    .line 674
    sget-boolean v4, Lflix/com/vision/App;->G:Z

    .line 675
    .line 676
    if-eqz v4, :cond_12

    .line 677
    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    .line 679
    .line 680
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    .line 682
    .line 683
    sget-object v4, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 684
    .line 685
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 692
    .line 693
    .line 694
    move-result-object v4

    .line 695
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v4

    .line 699
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v3

    .line 706
    :cond_12
    iput-object v3, v1, Lflix/com/vision/models/Season;->poster:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 707
    .line 708
    goto :goto_f

    .line 709
    :catch_7
    move-wide/from16 v41, v3

    .line 710
    .line 711
    goto :goto_f

    .line 712
    :catch_8
    :cond_13
    move-wide/from16 v41, v3

    .line 713
    .line 714
    move-object/from16 v40, v6

    .line 715
    .line 716
    :catch_9
    :goto_f
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 717
    .line 718
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    .line 720
    .line 721
    const-string v4, "Season "

    .line 722
    .line 723
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    iput-object v3, v1, Lflix/com/vision/models/Season;->label:Ljava/lang/String;

    .line 734
    .line 735
    iput v13, v1, Lflix/com/vision/models/Season;->episode_count:I

    .line 736
    .line 737
    const-string v3, "air_date"

    .line 738
    .line 739
    invoke-virtual {v5, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 740
    .line 741
    .line 742
    move-result-object v3

    .line 743
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v3

    .line 747
    if-eqz v3, :cond_14

    .line 748
    .line 749
    const-string v4, "-"

    .line 750
    .line 751
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 755
    const/16 v16, 0x0

    .line 756
    .line 757
    :try_start_10
    aget-object v3, v3, v16

    .line 758
    .line 759
    iput-object v3, v1, Lflix/com/vision/models/Season;->year:Ljava/lang/String;

    .line 760
    .line 761
    goto :goto_11

    .line 762
    :catch_a
    :goto_10
    const/16 v16, 0x0

    .line 763
    .line 764
    goto :goto_12

    .line 765
    :cond_14
    const/16 v16, 0x0

    .line 766
    .line 767
    :goto_11
    iput v2, v1, Lflix/com/vision/models/Season;->number:I

    .line 768
    .line 769
    iput-object v12, v1, Lflix/com/vision/models/Season;->plot:Ljava/lang/String;

    .line 770
    .line 771
    iget-object v2, v7, Lflix/com/vision/models/Movie;->seasons:Ljava/util/ArrayList;

    .line 772
    .line 773
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 774
    .line 775
    .line 776
    :catch_b
    :goto_12
    move/from16 v33, v10

    .line 777
    .line 778
    goto :goto_15

    .line 779
    :catch_c
    :goto_13
    move-wide/from16 v41, v3

    .line 780
    .line 781
    move-object/from16 v40, v6

    .line 782
    .line 783
    goto :goto_10

    .line 784
    :catch_d
    move-object/from16 v39, v1

    .line 785
    .line 786
    goto :goto_13

    .line 787
    :catch_e
    move-object/from16 v39, v1

    .line 788
    .line 789
    move-wide/from16 v41, v3

    .line 790
    .line 791
    move-object/from16 v40, v6

    .line 792
    .line 793
    move-object/from16 v38, v12

    .line 794
    .line 795
    goto :goto_10

    .line 796
    :catch_f
    move-object/from16 v39, v1

    .line 797
    .line 798
    :goto_14
    move-wide/from16 v41, v3

    .line 799
    .line 800
    move-object/from16 v40, v6

    .line 801
    .line 802
    move-object/from16 v36, v10

    .line 803
    .line 804
    goto/16 :goto_e

    .line 805
    .line 806
    :catch_10
    move-object/from16 v39, v1

    .line 807
    .line 808
    move/from16 v35, v2

    .line 809
    .line 810
    goto :goto_14

    .line 811
    :goto_15
    add-int/lit8 v2, v35, 0x1

    .line 812
    .line 813
    move-object/from16 v10, v36

    .line 814
    .line 815
    move-object/from16 v13, v37

    .line 816
    .line 817
    move-object/from16 v12, v38

    .line 818
    .line 819
    move-object/from16 v1, v39

    .line 820
    .line 821
    move-object/from16 v6, v40

    .line 822
    .line 823
    move-wide/from16 v3, v41

    .line 824
    .line 825
    goto/16 :goto_d

    .line 826
    .line 827
    :cond_15
    move-object/from16 v36, v10

    .line 828
    .line 829
    move-object/from16 v2, v19

    .line 830
    .line 831
    move-object/from16 v11, v29

    .line 832
    .line 833
    move-object/from16 v12, v34

    .line 834
    .line 835
    move-object/from16 v14, v36

    .line 836
    .line 837
    move-object/from16 v39, v1

    .line 838
    .line 839
    move-wide/from16 v41, v3

    .line 840
    .line 841
    move-object/from16 v40, v6

    .line 842
    .line 843
    const/16 v16, 0x0

    .line 844
    .line 845
    move/from16 v1, v27

    .line 846
    .line 847
    :goto_16
    const-string v3, "vote_average"

    .line 848
    .line 849
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 850
    .line 851
    .line 852
    move-result-object v3

    .line 853
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsDouble()D

    .line 854
    .line 855
    .line 856
    move-result-wide v3

    .line 857
    iput-wide v8, v7, Lflix/com/vision/models/Movie;->collectionId:J

    .line 858
    .line 859
    move-object/from16 v5, v26

    .line 860
    .line 861
    iput-object v5, v7, Lflix/com/vision/models/Movie;->collectionName:Ljava/lang/String;

    .line 862
    .line 863
    move-wide/from16 v5, v41

    .line 864
    .line 865
    invoke-virtual {v7, v5, v6}, Lflix/com/vision/models/Movie;->setRevenue(J)V

    .line 866
    .line 867
    .line 868
    new-instance v5, Ljava/lang/StringBuilder;

    .line 869
    .line 870
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    move-object/from16 v3, v32

    .line 877
    .line 878
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v4

    .line 885
    invoke-virtual {v7, v4}, Lflix/com/vision/models/Movie;->setRating(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    move/from16 v4, v31

    .line 889
    .line 890
    invoke-virtual {v7, v4}, Lflix/com/vision/models/Movie;->setDuration(I)V

    .line 891
    .line 892
    .line 893
    move-wide/from16 v4, v22

    .line 894
    .line 895
    invoke-virtual {v7, v4, v5}, Lflix/com/vision/models/Movie;->setMovieId(J)V

    .line 896
    .line 897
    .line 898
    move-object/from16 v10, v30

    .line 899
    .line 900
    iput-object v10, v7, Lflix/com/vision/models/Movie;->backdrop:Ljava/lang/String;

    .line 901
    .line 902
    invoke-virtual {v7, v11}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    move-object/from16 v5, v21

    .line 906
    .line 907
    iput-object v5, v7, Lflix/com/vision/models/Movie;->last_air_date:Ljava/lang/String;

    .line 908
    .line 909
    move/from16 v5, v25

    .line 910
    .line 911
    invoke-virtual {v7, v5}, Lflix/com/vision/models/Movie;->setNSFK(Z)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v7, v12}, Lflix/com/vision/models/Movie;->setRawReleaseDate(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    move-object/from16 v4, v17

    .line 918
    .line 919
    :try_start_11
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 920
    .line 921
    .line 922
    move-result v5

    .line 923
    if-eqz v5, :cond_16

    .line 924
    .line 925
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 926
    .line 927
    .line 928
    move-result-object v5

    .line 929
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v5

    .line 933
    invoke-virtual {v7, v5}, Lflix/com/vision/models/Movie;->setImdbID(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 934
    .line 935
    .line 936
    :catch_11
    :cond_16
    move/from16 v5, p1

    .line 937
    .line 938
    const/4 v10, 0x1

    .line 939
    if-ne v5, v10, :cond_18

    .line 940
    .line 941
    if-lez v1, :cond_17

    .line 942
    .line 943
    invoke-virtual {v7, v1}, Lflix/com/vision/models/Movie;->setSeason_count(I)V

    .line 944
    .line 945
    .line 946
    goto :goto_17

    .line 947
    :cond_17
    const/16 v1, 0xa

    .line 948
    .line 949
    invoke-virtual {v7, v1}, Lflix/com/vision/models/Movie;->setSeason_count(I)V

    .line 950
    .line 951
    .line 952
    :cond_18
    :goto_17
    invoke-virtual {v7, v5}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 953
    .line 954
    .line 955
    invoke-static/range {v24 .. v24}, Lh5/n;->isEmpty(Ljava/lang/String;)Z

    .line 956
    .line 957
    .line 958
    move-result v1

    .line 959
    if-nez v1, :cond_19

    .line 960
    .line 961
    move-object/from16 v1, v24

    .line 962
    .line 963
    invoke-virtual {v7, v1}, Lflix/com/vision/models/Movie;->setThumb(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v7, v1}, Lflix/com/vision/models/Movie;->setImage_url(Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    :cond_19
    invoke-static/range {v20 .. v20}, Lh5/n;->isEmpty(Ljava/lang/String;)Z

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    if-nez v1, :cond_1a

    .line 974
    .line 975
    move-object/from16 v1, v20

    .line 976
    .line 977
    invoke-virtual {v7, v1}, Lflix/com/vision/models/Movie;->setCover(Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    :cond_1a
    move-object/from16 v1, v18

    .line 981
    .line 982
    invoke-virtual {v7, v1}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    iput-object v14, v7, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 986
    .line 987
    const-string v1, "production_companies"

    .line 988
    .line 989
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 990
    .line 991
    .line 992
    move-result-object v1

    .line 993
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 994
    .line 995
    .line 996
    move-result v1

    .line 997
    if-nez v1, :cond_1c

    .line 998
    .line 999
    const-string v1, "production_companies"

    .line 1000
    .line 1001
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v1

    .line 1009
    move-object v6, v3

    .line 1010
    move/from16 v5, v16

    .line 1011
    .line 1012
    :goto_18
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    .line 1013
    .line 1014
    .line 1015
    move-result v8

    .line 1016
    if-ge v5, v8, :cond_1b

    .line 1017
    .line 1018
    invoke-virtual {v1, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v8

    .line 1022
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v8

    .line 1026
    move-object/from16 v9, v40

    .line 1027
    .line 1028
    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v8

    .line 1032
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v8

    .line 1036
    const-string v10, " \n"

    .line 1037
    .line 1038
    invoke-static {v6, v10, v8}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v6

    .line 1042
    add-int/lit8 v5, v5, 0x1

    .line 1043
    .line 1044
    goto :goto_18

    .line 1045
    :cond_1b
    :goto_19
    move-object/from16 v9, v40

    .line 1046
    .line 1047
    goto :goto_1a

    .line 1048
    :cond_1c
    move-object v6, v3

    .line 1049
    goto :goto_19

    .line 1050
    :goto_1a
    invoke-virtual {v7, v6}, Lflix/com/vision/models/Movie;->setProduction(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    const-string v1, "genres"

    .line 1054
    .line 1055
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v1

    .line 1059
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 1060
    .line 1061
    .line 1062
    move-result v1

    .line 1063
    if-nez v1, :cond_1d

    .line 1064
    .line 1065
    const-string v1, "genres"

    .line 1066
    .line 1067
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v1

    .line 1071
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v1

    .line 1075
    move-object v13, v3

    .line 1076
    move/from16 v11, v16

    .line 1077
    .line 1078
    :goto_1b
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    .line 1079
    .line 1080
    .line 1081
    move-result v3

    .line 1082
    if-ge v11, v3, :cond_1e

    .line 1083
    .line 1084
    invoke-virtual {v1, v11}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v3

    .line 1088
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v3

    .line 1092
    invoke-virtual {v3, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v3

    .line 1096
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v3

    .line 1100
    move-object/from16 v5, v39

    .line 1101
    .line 1102
    invoke-static {v13, v3, v5}, LA/i;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v13

    .line 1106
    add-int/lit8 v11, v11, 0x1

    .line 1107
    .line 1108
    goto :goto_1b

    .line 1109
    :cond_1d
    move-object v13, v3

    .line 1110
    :cond_1e
    invoke-virtual {v7, v13}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    :try_start_12
    const-string v1, "external_ids"

    .line 1114
    .line 1115
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    if-eqz v0, :cond_1f

    .line 1132
    .line 1133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1134
    .line 1135
    .line 1136
    move-result v1

    .line 1137
    const/4 v3, 0x3

    .line 1138
    if-le v1, v3, :cond_1f

    .line 1139
    .line 1140
    iput-object v0, v7, Lflix/com/vision/models/Movie;->imdbID:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 1141
    .line 1142
    :catch_12
    :cond_1f
    iput-object v2, v7, Lflix/com/vision/models/Movie;->created_by:Ljava/lang/String;

    .line 1143
    .line 1144
    return-object v7
.end method

.method private static parseMovieData(Lcom/google/gson/JsonObject;I)Lflix/com/vision/models/Movie;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "number_of_seasons"

    .line 6
    .line 7
    const-string v3, "first_air_date"

    .line 8
    .line 9
    const-string v4, "release_date"

    .line 10
    .line 11
    const-string v5, "adult"

    .line 12
    .line 13
    const-string v6, "id"

    .line 14
    .line 15
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    int-to-long v6, v6

    .line 24
    const/4 v8, 0x0

    .line 25
    :try_start_0
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    if-nez v9, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 40
    .line 41
    .line 42
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :catch_0
    :cond_0
    const-string v5, "overview"

    .line 44
    .line 45
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-string v9, "poster_path"

    .line 54
    .line 55
    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    const-string v11, ""

    .line 64
    .line 65
    if-nez v10, :cond_1

    .line 66
    .line 67
    new-instance v10, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    sget-object v12, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v12, "w300"

    .line 78
    .line 79
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    move-object v9, v11

    .line 99
    :goto_0
    const/4 v10, -0x1

    .line 100
    if-nez v1, :cond_2

    .line 101
    .line 102
    const-string v2, "title"

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v3}, Lflix/com/vision/utils/JsonUtils;->getYearSplit(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :try_start_2
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    goto :goto_2

    .line 133
    :catch_1
    move-object v3, v11

    .line 134
    :catch_2
    move-object v4, v11

    .line 135
    goto :goto_2

    .line 136
    :cond_2
    const-string v4, "name"

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    :try_start_3
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    invoke-static {v12}, Lflix/com/vision/utils/JsonUtils;->getYearSplit(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 158
    :try_start_4
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 166
    move-object/from16 v16, v12

    .line 167
    .line 168
    move-object v12, v3

    .line 169
    move-object/from16 v3, v16

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :catch_3
    move-object v12, v11

    .line 173
    :catch_4
    move-object v3, v12

    .line 174
    move-object v12, v11

    .line 175
    :goto_1
    :try_start_5
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 180
    .line 181
    .line 182
    move-result v13

    .line 183
    if-nez v13, :cond_3

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 190
    .line 191
    .line 192
    move-result v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 193
    :catch_5
    :cond_3
    move-object v2, v4

    .line 194
    move-object v4, v12

    .line 195
    :goto_2
    const-string v12, "vote_average"

    .line 196
    .line 197
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    .line 202
    .line 203
    .line 204
    move-result-wide v12

    .line 205
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 206
    .line 207
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 208
    .line 209
    .line 210
    const-wide/16 v14, 0x0

    .line 211
    .line 212
    invoke-virtual {v0, v14, v15}, Lflix/com/vision/models/Movie;->setRevenue(J)V

    .line 213
    .line 214
    .line 215
    new-instance v14, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    invoke-virtual {v0, v12}, Lflix/com/vision/models/Movie;->setRating(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v6, v7}, Lflix/com/vision/models/Movie;->setMovieId(J)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v2}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v8}, Lflix/com/vision/models/Movie;->setNSFK(Z)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v4}, Lflix/com/vision/models/Movie;->setRawReleaseDate(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const/4 v2, 0x1

    .line 246
    if-ne v1, v2, :cond_5

    .line 247
    .line 248
    if-lez v10, :cond_4

    .line 249
    .line 250
    invoke-virtual {v0, v10}, Lflix/com/vision/models/Movie;->setSeason_count(I)V

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_4
    const/16 v2, 0xa

    .line 255
    .line 256
    invoke-virtual {v0, v2}, Lflix/com/vision/models/Movie;->setSeason_count(I)V

    .line 257
    .line 258
    .line 259
    :cond_5
    :goto_3
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 260
    .line 261
    .line 262
    invoke-static {v9}, Lh5/n;->isEmpty(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-nez v1, :cond_6

    .line 267
    .line 268
    invoke-virtual {v0, v9}, Lflix/com/vision/models/Movie;->setThumb(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v9}, Lflix/com/vision/models/Movie;->setImage_url(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :cond_6
    invoke-static {v11}, Lh5/n;->isEmpty(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-nez v1, :cond_7

    .line 279
    .line 280
    invoke-virtual {v0, v11}, Lflix/com/vision/models/Movie;->setCover(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_7
    invoke-virtual {v0, v5}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iput-object v3, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v0, v11}, Lflix/com/vision/models/Movie;->setProduction(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v11}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-object v0
.end method

.method public static parseMovieHindi(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/utils/JsonUtils;->parseDataHindi(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static parseMovieHindi2(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/utils/JsonUtils;->parseDataHindi(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static parseMovieHindiSeries(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/utils/JsonUtils;->parseDataHindi(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static parseMovieHindiSeries2(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;
    .locals 0

    .line 1
    invoke-static {p0}, Lflix/com/vision/utils/JsonUtils;->parseDataHindi(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static parseMovieInfo(Lcom/google/gson/JsonElement;I)Lflix/com/vision/models/Movie;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lflix/com/vision/utils/JsonUtils;->parseMovie(Lcom/google/gson/JsonObject;I)Lflix/com/vision/models/Movie;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static parseMovieMulti(Lcom/google/gson/JsonObject;)Lflix/com/vision/models/Movie;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "first_air_date"

    .line 4
    .line 5
    const-string v2, "release_date"

    .line 6
    .line 7
    const-string v3, "adult"

    .line 8
    .line 9
    const-string v4, "id"

    .line 10
    .line 11
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    int-to-long v4, v4

    .line 20
    const/4 v6, 0x0

    .line 21
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 36
    .line 37
    .line 38
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    :cond_0
    move v3, v6

    .line 41
    :goto_0
    const-string v7, "media_type"

    .line 42
    .line 43
    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const-string v8, "movie"

    .line 52
    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const/4 v9, 0x3

    .line 58
    if-eqz v8, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const-string v6, "tv"

    .line 62
    .line 63
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    const/4 v6, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move v6, v9

    .line 72
    :goto_1
    if-ne v6, v9, :cond_3

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    return-object v0

    .line 76
    :cond_3
    const-string v7, "overview"

    .line 77
    .line 78
    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    const-string v8, "poster_path"

    .line 87
    .line 88
    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    const-string v11, ""

    .line 97
    .line 98
    if-nez v9, :cond_4

    .line 99
    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    sget-object v12, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v12, "w300"

    .line 111
    .line 112
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    move-object v8, v11

    .line 132
    :goto_2
    const-string v9, "backdrop_path"

    .line 133
    .line 134
    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-nez v12, :cond_5

    .line 143
    .line 144
    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    goto :goto_3

    .line 153
    :cond_5
    move-object v9, v11

    .line 154
    :goto_3
    if-nez v6, :cond_6

    .line 155
    .line 156
    const-string v1, "title"

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    invoke-static {v12}, Lflix/com/vision/utils/JsonUtils;->getYearSplit(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 186
    goto :goto_5

    .line 187
    :catch_1
    move-object v12, v11

    .line 188
    :catch_2
    :goto_4
    move-object v2, v11

    .line 189
    goto :goto_5

    .line 190
    :cond_6
    const-string v2, "name"

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    invoke-static {v12}, Lflix/com/vision/utils/JsonUtils;->getYearSplit(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 212
    :try_start_4
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 220
    move-object/from16 v17, v2

    .line 221
    .line 222
    move-object v2, v1

    .line 223
    move-object/from16 v1, v17

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :catch_3
    move-object v12, v11

    .line 227
    :catch_4
    move-object v1, v2

    .line 228
    goto :goto_4

    .line 229
    :goto_5
    const-string v13, "vote_average"

    .line 230
    .line 231
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    .line 236
    .line 237
    .line 238
    move-result-wide v13

    .line 239
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 240
    .line 241
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 242
    .line 243
    .line 244
    move-object/from16 v16, v11

    .line 245
    .line 246
    const-wide/16 v10, 0x0

    .line 247
    .line 248
    invoke-virtual {v0, v10, v11}, Lflix/com/vision/models/Movie;->setRevenue(J)V

    .line 249
    .line 250
    .line 251
    new-instance v10, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    move-object/from16 v11, v16

    .line 260
    .line 261
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    invoke-virtual {v0, v10}, Lflix/com/vision/models/Movie;->setRating(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v4, v5}, Lflix/com/vision/models/Movie;->setMovieId(J)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v6}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    if-eqz v9, :cond_7

    .line 281
    .line 282
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-nez v1, :cond_7

    .line 287
    .line 288
    iput-object v9, v0, Lflix/com/vision/models/Movie;->backdrop:Ljava/lang/String;

    .line 289
    .line 290
    :cond_7
    invoke-virtual {v0, v3}, Lflix/com/vision/models/Movie;->setNSFK(Z)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v2}, Lflix/com/vision/models/Movie;->setRawReleaseDate(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    const/4 v15, 0x1

    .line 297
    if-ne v6, v15, :cond_8

    .line 298
    .line 299
    const/16 v1, 0xa

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setSeason_count(I)V

    .line 302
    .line 303
    .line 304
    :cond_8
    invoke-virtual {v0, v6}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 305
    .line 306
    .line 307
    invoke-static {v8}, Lh5/n;->isEmpty(Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-nez v1, :cond_9

    .line 312
    .line 313
    invoke-virtual {v0, v8}, Lflix/com/vision/models/Movie;->setThumb(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v8}, Lflix/com/vision/models/Movie;->setImage_url(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :cond_9
    invoke-static {v11}, Lh5/n;->isEmpty(Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-nez v1, :cond_a

    .line 324
    .line 325
    invoke-virtual {v0, v11}, Lflix/com/vision/models/Movie;->setCover(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    :cond_a
    invoke-virtual {v0, v7}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iput-object v12, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v0, v11}, Lflix/com/vision/models/Movie;->setProduction(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v11}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return-object v0
.end method

.method private static parseMovieSimple(Lcom/google/gson/JsonObject;I)Lflix/com/vision/models/Movie;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "number_of_seasons"

    .line 6
    .line 7
    const-string v3, "adult"

    .line 8
    .line 9
    const-string v4, "poster_path"

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    const-string v6, "id"

    .line 14
    .line 15
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    int-to-long v6, v6

    .line 24
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    if-nez v9, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 39
    .line 40
    .line 41
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    :cond_0
    const/4 v3, 0x0

    .line 44
    :goto_0
    new-instance v9, Lflix/com/vision/models/Movie;

    .line 45
    .line 46
    invoke-direct {v9}, Lflix/com/vision/models/Movie;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v10, "backdrop_path"

    .line 50
    .line 51
    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-nez v11, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v10, 0x0

    .line 71
    :goto_1
    const-string v11, "overview"

    .line 72
    .line 73
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    if-nez v12, :cond_2

    .line 90
    .line 91
    new-instance v12, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    sget-object v13, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v13, "w500"

    .line 102
    .line 103
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :try_start_2
    sget-boolean v13, Lflix/com/vision/App;->G:Z

    .line 122
    .line 123
    if-eqz v13, :cond_3

    .line 124
    .line 125
    new-instance v13, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    sget-object v14, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v14, "w780"

    .line 136
    .line 137
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 155
    goto :goto_2

    .line 156
    :catch_1
    :cond_2
    move-object v12, v5

    .line 157
    :catch_2
    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 158
    if-nez v1, :cond_5

    .line 159
    .line 160
    const-string v2, "title"

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-string v14, "release_date"

    .line 171
    .line 172
    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 173
    .line 174
    .line 175
    move-result-object v15

    .line 176
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    invoke-static {v15}, Lflix/com/vision/utils/JsonUtils;->getYearSplit(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v15

    .line 184
    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 185
    .line 186
    .line 187
    move-result-object v14

    .line 188
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    :try_start_3
    const-string v8, "yyyy-MM-dd"

    .line 193
    .line 194
    invoke-static {v14, v8}, Lh5/n;->stringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    new-instance v13, Ljava/util/Date;

    .line 199
    .line 200
    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v13, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 204
    .line 205
    .line 206
    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 207
    xor-int/2addr v8, v4

    .line 208
    goto :goto_3

    .line 209
    :catch_3
    move v8, v4

    .line 210
    :goto_3
    iput-boolean v8, v9, Lflix/com/vision/models/Movie;->is_released:Z

    .line 211
    .line 212
    if-eqz v14, :cond_4

    .line 213
    .line 214
    iput-object v14, v9, Lflix/com/vision/models/Movie;->raw_release_date:Ljava/lang/String;

    .line 215
    .line 216
    :cond_4
    :goto_4
    const/4 v13, -0x1

    .line 217
    goto :goto_6

    .line 218
    :cond_5
    const-string v8, "name"

    .line 219
    .line 220
    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    const-string v13, "first_air_date"

    .line 229
    .line 230
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 231
    .line 232
    .line 233
    move-result-object v14

    .line 234
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    invoke-static {v14}, Lflix/com/vision/utils/JsonUtils;->getYearSplit(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v15

    .line 242
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 243
    .line 244
    .line 245
    move-result-object v13

    .line 246
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    :try_start_4
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 251
    .line 252
    .line 253
    move-result-object v13

    .line 254
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 255
    .line 256
    .line 257
    move-result v13

    .line 258
    if-nez v13, :cond_6

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 265
    .line 266
    .line 267
    move-result v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 268
    goto :goto_5

    .line 269
    :cond_6
    const/4 v13, -0x1

    .line 270
    :goto_5
    move-object v2, v8

    .line 271
    goto :goto_6

    .line 272
    :catch_4
    move-object v2, v8

    .line 273
    goto :goto_4

    .line 274
    :goto_6
    const-string v8, "vote_average"

    .line 275
    .line 276
    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    move-object/from16 v17, v5

    .line 281
    .line 282
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsDouble()D

    .line 283
    .line 284
    .line 285
    move-result-wide v4

    .line 286
    const-string v8, "genre_ids"

    .line 287
    .line 288
    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    move-object/from16 v16, v15

    .line 293
    .line 294
    const/4 v8, 0x0

    .line 295
    :goto_7
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 296
    .line 297
    .line 298
    move-result v15

    .line 299
    if-ge v8, v15, :cond_7

    .line 300
    .line 301
    iget-object v15, v9, Lflix/com/vision/models/Movie;->genre_ids:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v0, v8}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 304
    .line 305
    .line 306
    move-result-object v18

    .line 307
    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 308
    .line 309
    .line 310
    move-result v18

    .line 311
    move-object/from16 p0, v0

    .line 312
    .line 313
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    add-int/lit8 v8, v8, 0x1

    .line 321
    .line 322
    move-object/from16 v0, p0

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_7
    move-object v0, v11

    .line 326
    move-object v8, v12

    .line 327
    const-wide/16 v11, 0x0

    .line 328
    .line 329
    invoke-virtual {v9, v11, v12}, Lflix/com/vision/models/Movie;->setRevenue(J)V

    .line 330
    .line 331
    .line 332
    new-instance v11, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    move-object/from16 v4, v17

    .line 341
    .line 342
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v9, v5}, Lflix/com/vision/models/Movie;->setRating(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v9, v6, v7}, Lflix/com/vision/models/Movie;->setMovieId(J)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v9, v2}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v9, v3}, Lflix/com/vision/models/Movie;->setNSFK(Z)V

    .line 359
    .line 360
    .line 361
    iput-object v10, v9, Lflix/com/vision/models/Movie;->backdrop:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v9, v14}, Lflix/com/vision/models/Movie;->setRawReleaseDate(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const/4 v2, 0x1

    .line 367
    if-ne v1, v2, :cond_9

    .line 368
    .line 369
    if-lez v13, :cond_8

    .line 370
    .line 371
    invoke-virtual {v9, v13}, Lflix/com/vision/models/Movie;->setSeason_count(I)V

    .line 372
    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_8
    const/16 v2, 0xa

    .line 376
    .line 377
    invoke-virtual {v9, v2}, Lflix/com/vision/models/Movie;->setSeason_count(I)V

    .line 378
    .line 379
    .line 380
    :cond_9
    :goto_8
    invoke-virtual {v9, v1}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 381
    .line 382
    .line 383
    invoke-static {v8}, Lh5/n;->isEmpty(Ljava/lang/String;)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-nez v1, :cond_a

    .line 388
    .line 389
    invoke-virtual {v9, v8}, Lflix/com/vision/models/Movie;->setThumb(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v9, v8}, Lflix/com/vision/models/Movie;->setImage_url(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    :cond_a
    invoke-static {v4}, Lh5/n;->isEmpty(Ljava/lang/String;)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-nez v1, :cond_b

    .line 400
    .line 401
    invoke-virtual {v9, v4}, Lflix/com/vision/models/Movie;->setCover(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :cond_b
    invoke-virtual {v9, v0}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    move-object/from16 v15, v16

    .line 408
    .line 409
    iput-object v15, v9, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 410
    .line 411
    invoke-virtual {v9, v4}, Lflix/com/vision/models/Movie;->setProduction(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v9, v4}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    return-object v9
.end method

.method private static parseMoviesFromKownfor(Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Movie;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v1, "known_for"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge v1, v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Lflix/com/vision/utils/JsonUtils;->parseMovieMulti(Lcom/google/gson/JsonObject;)Lflix/com/vision/models/Movie;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const-string v4, "gomorrah"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    :cond_1
    return-object v0
.end method

.method public static parsePeople(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Cast;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "results"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lflix/com/vision/models/Cast;

    .line 32
    .line 33
    invoke-direct {v3}, Lflix/com/vision/models/Cast;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "name"

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    sget-object v6, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v6, "w185"

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v6, "profile_path"

    .line 62
    .line 63
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const-string v6, "id"

    .line 79
    .line 80
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {v3, v4}, Lflix/com/vision/models/Cast;->setName(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    int-to-long v6, v2

    .line 92
    invoke-virtual {v3, v6, v7}, Lflix/com/vision/models/Cast;->setId(J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v5}, Lflix/com/vision/models/Cast;->setImg_url(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    return-object v0
.end method

.method public static parsePlaylistHindi(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/hindi/PlaylistItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "file"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "id"

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "title"

    .line 42
    .line 43
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v5, Lflix/com/vision/models/hindi/PlaylistItem;

    .line 52
    .line 53
    invoke-direct {v5}, Lflix/com/vision/models/hindi/PlaylistItem;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v3, v5, Lflix/com/vision/models/hindi/PlaylistItem;->file:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v4, v5, Lflix/com/vision/models/hindi/PlaylistItem;->id:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v2, v5, Lflix/com/vision/models/hindi/PlaylistItem;->language:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    :catch_0
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    return-object v0
.end method

.method public static parsePlaylistHindiSeries(Lcom/google/gson/JsonArray;II)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonArray;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/hindi/PlaylistItem;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "folder"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "id"

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/JsonArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-ge v5, v6, :cond_4

    .line 18
    .line 19
    move-object/from16 v6, p0

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v6, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-virtual {v7, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    new-instance v9, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 40
    .line 41
    .line 42
    move/from16 v10, p1

    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-nez v8, :cond_1

    .line 59
    .line 60
    :catch_0
    :cond_0
    :goto_1
    move/from16 v13, p2

    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_1
    invoke-virtual {v7, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    const/4 v8, 0x0

    .line 69
    :goto_2
    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->size()I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-ge v8, v9, :cond_0

    .line 74
    .line 75
    invoke-virtual {v7, v8}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    const-string v11, "episode"

    .line 84
    .line 85
    invoke-virtual {v9, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    new-instance v12, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    .line 98
    move/from16 v13, p2

    .line 99
    .line 100
    :try_start_2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    if-nez v11, :cond_2

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_2
    invoke-virtual {v9, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    const/4 v11, 0x0

    .line 126
    :goto_3
    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->size()I

    .line 127
    .line 128
    .line 129
    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 130
    if-ge v11, v12, :cond_3

    .line 131
    .line 132
    :try_start_3
    invoke-virtual {v9, v11}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    const-string v14, "file"

    .line 141
    .line 142
    invoke-virtual {v12, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    invoke-virtual {v12, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 151
    .line 152
    .line 153
    move-result-object v15

    .line 154
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    const-string v4, "title"

    .line 159
    .line 160
    invoke-virtual {v12, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    new-instance v12, Lflix/com/vision/models/hindi/PlaylistItem;

    .line 169
    .line 170
    invoke-direct {v12}, Lflix/com/vision/models/hindi/PlaylistItem;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object v14, v12, Lflix/com/vision/models/hindi/PlaylistItem;->file:Ljava/lang/String;

    .line 174
    .line 175
    iput-object v15, v12, Lflix/com/vision/models/hindi/PlaylistItem;->id:Ljava/lang/String;

    .line 176
    .line 177
    iput-object v4, v12, Lflix/com/vision/models/hindi/PlaylistItem;->language:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 180
    .line 181
    .line 182
    :catch_1
    add-int/lit8 v11, v11, 0x1

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_3
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :catch_2
    move/from16 v10, p1

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :catch_3
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_4
    return-object v3
.end method

.method public static parseRDVideo(Lcom/google/gson/JsonElement;)Lflix/com/vision/models/VideoSource;
    .locals 10

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v2, "download"

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "host"

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "mimeType"

    .line 32
    .line 33
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    const-string v3, "RD.NET"

    .line 44
    .line 45
    :cond_1
    const-string v5, "streamable"

    .line 46
    .line 47
    invoke-virtual {p0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const-string v6, "filesize"

    .line 56
    .line 57
    invoke-virtual {p0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    const-string p0, ""

    .line 66
    .line 67
    const-wide/16 v8, 0x0

    .line 68
    .line 69
    cmp-long v8, v6, v8

    .line 70
    .line 71
    if-eqz v8, :cond_2

    .line 72
    .line 73
    const-wide/16 v8, -0x1

    .line 74
    .line 75
    cmp-long v8, v6, v8

    .line 76
    .line 77
    if-eqz v8, :cond_2

    .line 78
    .line 79
    invoke-static {v6, v7}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :cond_2
    if-lez v5, :cond_3

    .line 84
    .line 85
    new-instance v5, Lflix/com/vision/models/VideoSource;

    .line 86
    .line 87
    invoke-direct {v5}, Lflix/com/vision/models/VideoSource;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .line 89
    .line 90
    :try_start_1
    iput-object v2, v5, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, "] [RD] ["

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p0, "]"

    .line 113
    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    iput-object p0, v5, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 122
    .line 123
    const/4 p0, 0x1

    .line 124
    iput-boolean p0, v5, Lflix/com/vision/models/VideoSource;->isRealDebrid:Z

    .line 125
    .line 126
    iput-object v4, v5, Lflix/com/vision/models/VideoSource;->mimeType:Ljava/lang/String;

    .line 127
    .line 128
    iput-boolean p0, v5, Lflix/com/vision/models/VideoSource;->streamable:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    .line 130
    return-object v5

    .line 131
    :catch_0
    move-object v1, v5

    .line 132
    nop

    .line 133
    :catch_1
    :cond_3
    return-object v1
.end method

.method public static parseRating(Lcom/google/gson/JsonElement;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string p1, "results"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "NA"

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v2, "iso_3166_1"

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    const-string v3, "release_dates"

    .line 42
    .line 43
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    move v3, v0

    .line 48
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-ge v3, v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v5, "certification"

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-eqz v4, :cond_0

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_0

    .line 79
    .line 80
    return-object v4

    .line 81
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    move-object p1, v2

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-nez p0, :cond_3

    .line 93
    .line 94
    return-object p1

    .line 95
    :cond_3
    const-string p0, "0"

    .line 96
    .line 97
    return-object p0
.end method

.method public static parseRatingSeries(Lcom/google/gson/JsonElement;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "results"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ge v2, v3, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "iso_3166_1"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    const-string v1, "rating"

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_0

    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    :cond_2
    const-string v0, "us"

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_3

    .line 76
    .line 77
    invoke-static {p0, p1, v0}, Lflix/com/vision/utils/JsonUtils;->parseRatingSeries(Lcom/google/gson/JsonElement;ILjava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_3
    const-string p0, "0"

    .line 83
    .line 84
    return-object p0
.end method

.method public static parseSearchMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Movie;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "results"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2, p1}, Lflix/com/vision/utils/JsonUtils;->parseMovieData(Lcom/google/gson/JsonObject;I)Lflix/com/vision/models/Movie;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "gomorrah"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-object v0
.end method

.method public static parseSearchMulti(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Movie;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "results"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Lflix/com/vision/utils/JsonUtils;->parseMovieMulti(Lcom/google/gson/JsonObject;)Lflix/com/vision/models/Movie;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "gomorrah"

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-static {v2}, Lflix/com/vision/utils/JsonUtils;->parseMoviesFromKownfor(Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return-object v0
.end method

.method public static parseSuggestions(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "results"

    .line 7
    .line 8
    invoke-static {v1, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :try_start_0
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "title"

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    :try_start_1
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "name"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    :catch_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-object v0
.end method

.method public static parseSuggestionsGoogle(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object v0
.end method

.method public static parseTorboxLoginStatus(Lcom/google/gson/JsonElement;)Z
    .locals 3

    .line 1
    const-string v0, "success"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v1

    .line 29
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    return v1
.end method

.method public static parseTorboxStreamLink(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "success"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v0, "data"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object p0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public static parseTrailer(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "results"

    .line 6
    .line 7
    invoke-static {v1, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "site"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "type"

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    const-string v5, "YouTube"

    .line 49
    .line 50
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    const-string v3, "trailer"

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    const-string p0, "key"

    .line 67
    .line 68
    invoke-virtual {v2, p0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-object v0
.end method

.method public static parseWriters(Lcom/google/gson/JsonElement;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/Writer;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "crew"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lb/c;->f(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonArray;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "name"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "job"

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "department"

    .line 52
    .line 53
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    const-string v5, "id"

    .line 61
    .line 62
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    new-instance v2, Lflix/com/vision/models/Writer;

    .line 71
    .line 72
    invoke-direct {v2}, Lflix/com/vision/models/Writer;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Lflix/com/vision/models/Writer;->setName(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v5, v6}, Lflix/com/vision/models/Writer;->setId(J)V

    .line 79
    .line 80
    .line 81
    iput-object v4, v2, Lflix/com/vision/models/Writer;->CharacterName:Ljava/lang/String;

    .line 82
    .line 83
    const-string v3, ""

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Lflix/com/vision/models/Writer;->setImg_url(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    return-object v0
.end method
