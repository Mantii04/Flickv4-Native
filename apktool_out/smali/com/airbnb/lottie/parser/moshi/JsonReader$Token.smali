.class public final enum Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum e:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum f:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum j:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum m:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum n:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum p:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum q:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum r:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum s:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final synthetic t:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const/4 v3, 0x6

    .line 7
    const/4 v4, 0x5

    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x3

    .line 10
    const/4 v7, 0x2

    .line 11
    const/4 v8, 0x1

    .line 12
    const/4 v9, 0x0

    .line 13
    new-instance v10, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 14
    .line 15
    const-string v11, "BEGIN_ARRAY"

    .line 16
    .line 17
    invoke-direct {v10, v11, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    sput-object v10, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 21
    .line 22
    new-instance v11, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 23
    .line 24
    const-string v12, "END_ARRAY"

    .line 25
    .line 26
    invoke-direct {v11, v12, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v11, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->e:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 30
    .line 31
    new-instance v12, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 32
    .line 33
    const-string v13, "BEGIN_OBJECT"

    .line 34
    .line 35
    invoke-direct {v12, v13, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    sput-object v12, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->f:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 39
    .line 40
    new-instance v13, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 41
    .line 42
    const-string v14, "END_OBJECT"

    .line 43
    .line 44
    invoke-direct {v13, v14, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v13, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->j:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 48
    .line 49
    new-instance v14, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 50
    .line 51
    const-string v15, "NAME"

    .line 52
    .line 53
    invoke-direct {v14, v15, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    sput-object v14, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->m:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 57
    .line 58
    new-instance v15, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 59
    .line 60
    move/from16 v16, v5

    .line 61
    .line 62
    const-string v5, "STRING"

    .line 63
    .line 64
    invoke-direct {v15, v5, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v15, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->n:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 68
    .line 69
    new-instance v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 70
    .line 71
    move/from16 v17, v4

    .line 72
    .line 73
    const-string v4, "NUMBER"

    .line 74
    .line 75
    invoke-direct {v5, v4, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    sput-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->p:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 79
    .line 80
    new-instance v4, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 81
    .line 82
    move/from16 v18, v3

    .line 83
    .line 84
    const-string v3, "BOOLEAN"

    .line 85
    .line 86
    invoke-direct {v4, v3, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    sput-object v4, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->q:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 90
    .line 91
    new-instance v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 92
    .line 93
    move/from16 v19, v2

    .line 94
    .line 95
    const-string v2, "NULL"

    .line 96
    .line 97
    invoke-direct {v3, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    sput-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->r:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 101
    .line 102
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 103
    .line 104
    move/from16 v20, v1

    .line 105
    .line 106
    const-string v1, "END_DOCUMENT"

    .line 107
    .line 108
    invoke-direct {v2, v1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    sput-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->s:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 112
    .line 113
    const/16 v1, 0xa

    .line 114
    .line 115
    new-array v1, v1, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 116
    .line 117
    aput-object v10, v1, v9

    .line 118
    .line 119
    aput-object v11, v1, v8

    .line 120
    .line 121
    aput-object v12, v1, v7

    .line 122
    .line 123
    aput-object v13, v1, v6

    .line 124
    .line 125
    aput-object v14, v1, v16

    .line 126
    .line 127
    aput-object v15, v1, v17

    .line 128
    .line 129
    aput-object v5, v1, v18

    .line 130
    .line 131
    aput-object v4, v1, v19

    .line 132
    .line 133
    aput-object v3, v1, v20

    .line 134
    .line 135
    aput-object v2, v1, v0

    .line 136
    .line 137
    sput-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->t:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 138
    .line 139
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->t:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 8
    .line 9
    return-object v0
.end method
