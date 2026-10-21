.class public final Landroidx/datastore/preferences/protobuf/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/m0;


# static fields
.field public static final b:Landroidx/datastore/preferences/protobuf/P;


# instance fields
.field public final a:Landroidx/datastore/preferences/protobuf/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/P;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/preferences/protobuf/S;->b:Landroidx/datastore/preferences/protobuf/P;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Landroidx/datastore/preferences/protobuf/Q;

    .line 3
    .line 4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/C;->getInstance()Landroidx/datastore/preferences/protobuf/C;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    :try_start_0
    const-string v3, "androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory"

    .line 9
    .line 10
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "getInstance"

    .line 15
    .line 16
    new-array v5, v0, [Ljava/lang/Class;

    .line 17
    .line 18
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-array v4, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/datastore/preferences/protobuf/Y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    sget-object v3, Landroidx/datastore/preferences/protobuf/S;->b:Landroidx/datastore/preferences/protobuf/P;

    .line 33
    .line 34
    :goto_0
    const/4 v4, 0x2

    .line 35
    new-array v4, v4, [Landroidx/datastore/preferences/protobuf/Y;

    .line 36
    .line 37
    aput-object v2, v4, v0

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    aput-object v3, v4, v0

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v4, v1, Landroidx/datastore/preferences/protobuf/Q;->a:[Landroidx/datastore/preferences/protobuf/Y;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    sget-object v0, Landroidx/datastore/preferences/protobuf/I;->a:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/S;->a:Landroidx/datastore/preferences/protobuf/Q;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public createSchema(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/l0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroidx/datastore/preferences/protobuf/l0;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/n0;->requireGeneratedMessage(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/S;->a:Landroidx/datastore/preferences/protobuf/Q;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Y;->messageInfoFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/X;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Landroidx/datastore/preferences/protobuf/j0;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j0;->isMessageSetWireFormat()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v2, "Protobuf runtime is not correctly loaded."

    .line 18
    .line 19
    const-class v3, Landroidx/datastore/preferences/protobuf/F;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-static {}, Landroidx/datastore/preferences/protobuf/n0;->unknownFieldSetLiteSchema()Landroidx/datastore/preferences/protobuf/w0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object v0, Landroidx/datastore/preferences/protobuf/y;->a:Landroidx/datastore/preferences/protobuf/x;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j0;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/a0;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Landroidx/datastore/preferences/protobuf/c0;

    .line 40
    .line 41
    invoke-direct {v2, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/c0;-><init>(Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/x;Landroidx/datastore/preferences/protobuf/a0;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/n0;->proto2UnknownFieldSetSchema()Landroidx/datastore/preferences/protobuf/w0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object v0, Landroidx/datastore/preferences/protobuf/y;->b:Landroidx/datastore/preferences/protobuf/x;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j0;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/a0;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v2, Landroidx/datastore/preferences/protobuf/c0;

    .line 58
    .line 59
    invoke-direct {v2, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/c0;-><init>(Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/x;Landroidx/datastore/preferences/protobuf/a0;)V

    .line 60
    .line 61
    .line 62
    return-object v2

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    sget-object v0, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->b:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j0;->getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v0, :cond_3

    .line 82
    .line 83
    sget-object v2, Landroidx/datastore/preferences/protobuf/e0;->b:Landroidx/datastore/preferences/protobuf/d0;

    .line 84
    .line 85
    sget-object v3, Landroidx/datastore/preferences/protobuf/N;->b:Landroidx/datastore/preferences/protobuf/M;

    .line 86
    .line 87
    invoke-static {}, Landroidx/datastore/preferences/protobuf/n0;->unknownFieldSetLiteSchema()Landroidx/datastore/preferences/protobuf/w0;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    sget-object v5, Landroidx/datastore/preferences/protobuf/y;->a:Landroidx/datastore/preferences/protobuf/x;

    .line 92
    .line 93
    sget-object v6, Landroidx/datastore/preferences/protobuf/W;->b:Landroidx/datastore/preferences/protobuf/V;

    .line 94
    .line 95
    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/b0;->o(Landroidx/datastore/preferences/protobuf/j0;Landroidx/datastore/preferences/protobuf/d0;Landroidx/datastore/preferences/protobuf/N;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/x;Landroidx/datastore/preferences/protobuf/V;)Landroidx/datastore/preferences/protobuf/b0;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :cond_3
    sget-object v2, Landroidx/datastore/preferences/protobuf/e0;->b:Landroidx/datastore/preferences/protobuf/d0;

    .line 101
    .line 102
    sget-object v3, Landroidx/datastore/preferences/protobuf/N;->b:Landroidx/datastore/preferences/protobuf/M;

    .line 103
    .line 104
    invoke-static {}, Landroidx/datastore/preferences/protobuf/n0;->unknownFieldSetLiteSchema()Landroidx/datastore/preferences/protobuf/w0;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    sget-object v6, Landroidx/datastore/preferences/protobuf/W;->b:Landroidx/datastore/preferences/protobuf/V;

    .line 109
    .line 110
    const/4 v5, 0x0

    .line 111
    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/b0;->o(Landroidx/datastore/preferences/protobuf/j0;Landroidx/datastore/preferences/protobuf/d0;Landroidx/datastore/preferences/protobuf/N;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/x;Landroidx/datastore/preferences/protobuf/V;)Landroidx/datastore/preferences/protobuf/b0;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    :cond_4
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j0;->getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-ne p1, v0, :cond_6

    .line 121
    .line 122
    move-object p1, v2

    .line 123
    sget-object v2, Landroidx/datastore/preferences/protobuf/e0;->a:Landroidx/datastore/preferences/protobuf/d0;

    .line 124
    .line 125
    sget-object v3, Landroidx/datastore/preferences/protobuf/N;->a:Landroidx/datastore/preferences/protobuf/L;

    .line 126
    .line 127
    invoke-static {}, Landroidx/datastore/preferences/protobuf/n0;->proto2UnknownFieldSetSchema()Landroidx/datastore/preferences/protobuf/w0;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    sget-object v5, Landroidx/datastore/preferences/protobuf/y;->b:Landroidx/datastore/preferences/protobuf/x;

    .line 132
    .line 133
    if-eqz v5, :cond_5

    .line 134
    .line 135
    sget-object v6, Landroidx/datastore/preferences/protobuf/W;->a:Landroidx/datastore/preferences/protobuf/V;

    .line 136
    .line 137
    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/b0;->o(Landroidx/datastore/preferences/protobuf/j0;Landroidx/datastore/preferences/protobuf/d0;Landroidx/datastore/preferences/protobuf/N;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/x;Landroidx/datastore/preferences/protobuf/V;)Landroidx/datastore/preferences/protobuf/b0;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_6
    sget-object v2, Landroidx/datastore/preferences/protobuf/e0;->a:Landroidx/datastore/preferences/protobuf/d0;

    .line 149
    .line 150
    sget-object v3, Landroidx/datastore/preferences/protobuf/N;->a:Landroidx/datastore/preferences/protobuf/L;

    .line 151
    .line 152
    invoke-static {}, Landroidx/datastore/preferences/protobuf/n0;->proto3UnknownFieldSetSchema()Landroidx/datastore/preferences/protobuf/w0;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    sget-object v6, Landroidx/datastore/preferences/protobuf/W;->a:Landroidx/datastore/preferences/protobuf/V;

    .line 157
    .line 158
    const/4 v5, 0x0

    .line 159
    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/b0;->o(Landroidx/datastore/preferences/protobuf/j0;Landroidx/datastore/preferences/protobuf/d0;Landroidx/datastore/preferences/protobuf/N;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/x;Landroidx/datastore/preferences/protobuf/V;)Landroidx/datastore/preferences/protobuf/b0;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    return-object p1
.end method
