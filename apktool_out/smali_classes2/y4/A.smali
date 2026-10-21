.class public final synthetic Ly4/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Lflix/com/vision/activities/base/a;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/base/a;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly4/A;->b:I

    iput-object p1, p0, Ly4/A;->f:Lflix/com/vision/activities/base/a;

    iput-object p2, p0, Ly4/A;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly4/A;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x13

    .line 5
    .line 6
    iget-object v3, p0, Ly4/A;->f:Lflix/com/vision/activities/base/a;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    iget v5, p0, Ly4/A;->b:I

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    packed-switch v5, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget v5, Lflix/com/vision/activities/AnimesListActivity;->E:I

    .line 17
    .line 18
    check-cast v3, Lflix/com/vision/activities/AnimesListActivity;

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    sub-int/2addr v5, v4

    .line 25
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v2, Lorg/json/JSONArray;

    .line 30
    .line 31
    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lorg/json/JSONArray;

    .line 39
    .line 40
    move v2, v1

    .line 41
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-ge v2, v5, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lorg/json/JSONArray;

    .line 52
    .line 53
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    add-int/2addr v2, v4

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, v3, Lflix/com/vision/activities/AnimesListActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 67
    .line 68
    invoke-virtual {p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->clearSuggestions()V

    .line 69
    .line 70
    .line 71
    iget-object p1, v3, Lflix/com/vision/activities/AnimesListActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->addSuggestions(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :catch_0
    return-void

    .line 77
    :pswitch_0
    sget v5, Lflix/com/vision/activities/DramaHomeActivity;->W:I

    .line 78
    .line 79
    check-cast v3, Lflix/com/vision/activities/DramaHomeActivity;

    .line 80
    .line 81
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    sub-int/2addr v5, v4

    .line 86
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance v2, Lorg/json/JSONArray;

    .line 91
    .line 92
    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lorg/json/JSONArray;

    .line 100
    .line 101
    move v2, v1

    .line 102
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-ge v2, v5, :cond_1

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Lorg/json/JSONArray;

    .line 113
    .line 114
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    add-int/2addr v2, v4

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    iget-object p1, v3, Lflix/com/vision/activities/DramaHomeActivity;->e:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 128
    .line 129
    invoke-virtual {p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->clearSuggestions()V

    .line 130
    .line 131
    .line 132
    iget-object p1, v3, Lflix/com/vision/activities/DramaHomeActivity;->e:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->addSuggestions(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .line 136
    .line 137
    :catch_1
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
