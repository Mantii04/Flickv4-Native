.class public final La0/h;
.super Landroidx/datastore/preferences/protobuf/F;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:La0/h;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/f0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/f0;"
        }
    .end annotation
.end field

.field public static final STRINGS_FIELD_NUMBER:I = 0x1


# instance fields
.field private strings_:Landroidx/datastore/preferences/protobuf/H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/H;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La0/h;

    .line 2
    .line 3
    invoke-direct {v0}, La0/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La0/h;->DEFAULT_INSTANCE:La0/h;

    .line 7
    .line 8
    const-class v1, La0/h;

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/F;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/F;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/F;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->emptyProtobufList()Landroidx/datastore/preferences/protobuf/H;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, La0/h;->strings_:Landroidx/datastore/preferences/protobuf/H;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic d()La0/h;
    .locals 1

    .line 1
    sget-object v0, La0/h;->DEFAULT_INSTANCE:La0/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public static e(La0/h;Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    iget-object v0, p0, La0/h;->strings_:Landroidx/datastore/preferences/protobuf/H;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/H;->isModifiable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, La0/h;->strings_:Landroidx/datastore/preferences/protobuf/H;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/F;->mutableCopy(Landroidx/datastore/preferences/protobuf/H;)Landroidx/datastore/preferences/protobuf/H;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, La0/h;->strings_:Landroidx/datastore/preferences/protobuf/H;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, La0/h;->strings_:Landroidx/datastore/preferences/protobuf/H;

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroidx/datastore/preferences/protobuf/b;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static getDefaultInstance()La0/h;
    .locals 1

    .line 1
    sget-object v0, La0/h;->DEFAULT_INSTANCE:La0/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()La0/g;
    .locals 1

    .line 1
    sget-object v0, La0/h;->DEFAULT_INSTANCE:La0/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/F;->createBuilder()Landroidx/datastore/preferences/protobuf/D;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, La0/g;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :pswitch_0
    sget-object p1, La0/h;->PARSER:Landroidx/datastore/preferences/protobuf/f0;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p2, La0/h;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, La0/h;->PARSER:Landroidx/datastore/preferences/protobuf/f0;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Landroidx/datastore/preferences/protobuf/E;

    .line 27
    .line 28
    sget-object p3, La0/h;->DEFAULT_INSTANCE:La0/h;

    .line 29
    .line 30
    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/E;-><init>(Landroidx/datastore/preferences/protobuf/F;)V

    .line 31
    .line 32
    .line 33
    sput-object p1, La0/h;->PARSER:Landroidx/datastore/preferences/protobuf/f0;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit p2

    .line 39
    return-object p1

    .line 40
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1

    .line 42
    :cond_1
    return-object p1

    .line 43
    :pswitch_1
    sget-object p1, La0/h;->DEFAULT_INSTANCE:La0/h;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance p1, La0/g;

    .line 47
    .line 48
    invoke-static {}, La0/h;->d()La0/h;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Landroidx/datastore/preferences/protobuf/D;-><init>(Landroidx/datastore/preferences/protobuf/F;)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :pswitch_3
    new-instance p1, La0/h;

    .line 57
    .line 58
    invoke-direct {p1}, La0/h;-><init>()V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    .line 63
    .line 64
    const-string p2, "strings_"

    .line 65
    .line 66
    const/4 p3, 0x0

    .line 67
    aput-object p2, p1, p3

    .line 68
    .line 69
    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 70
    .line 71
    sget-object p3, La0/h;->DEFAULT_INSTANCE:La0/h;

    .line 72
    .line 73
    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/F;->newMessageInfo(Landroidx/datastore/preferences/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :pswitch_5
    const/4 p1, 0x0

    .line 79
    return-object p1

    .line 80
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStringsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La0/h;->strings_:Landroidx/datastore/preferences/protobuf/H;

    .line 2
    .line 3
    return-object v0
.end method
