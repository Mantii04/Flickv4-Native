.class public final LA5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA5/h;

.field public static final b:LA5/g;

.field public static c:LA5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LA5/h;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LA5/h;->a:LA5/h;

    .line 7
    .line 8
    new-instance v0, LA5/g;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1, v1, v1}, LA5/g;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, LA5/h;->b:LA5/g;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getModuleName(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "continuation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, LA5/h;->c:LA5/g;

    .line 7
    .line 8
    sget-object v1, LA5/h;->b:LA5/g;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    const-class v0, Ljava/lang/Class;

    .line 14
    .line 15
    const-string v3, "getModule"

    .line 16
    .line 17
    new-array v4, v2, [Ljava/lang/Class;

    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "java.lang.Module"

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "getDescriptor"

    .line 38
    .line 39
    new-array v5, v2, [Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "java.lang.module.ModuleDescriptor"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "name"

    .line 60
    .line 61
    new-array v6, v2, [Ljava/lang/Class;

    .line 62
    .line 63
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    new-instance v5, LA5/g;

    .line 68
    .line 69
    invoke-direct {v5, v0, v3, v4}, LA5/g;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 70
    .line 71
    .line 72
    sput-object v5, LA5/h;->c:LA5/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    move-object v0, v5

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    sput-object v1, LA5/h;->c:LA5/g;

    .line 77
    .line 78
    move-object v0, v1

    .line 79
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 80
    if-ne v0, v1, :cond_1

    .line 81
    .line 82
    return-object v3

    .line 83
    :cond_1
    iget-object v1, v0, LA5/g;->a:Ljava/lang/reflect/Method;

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-array v4, v2, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    move-object p1, v3

    .line 99
    :goto_1
    if-nez p1, :cond_3

    .line 100
    .line 101
    return-object v3

    .line 102
    :cond_3
    iget-object v1, v0, LA5/g;->b:Ljava/lang/reflect/Method;

    .line 103
    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    new-array v4, v2, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    move-object p1, v3

    .line 114
    :goto_2
    if-nez p1, :cond_5

    .line 115
    .line 116
    return-object v3

    .line 117
    :cond_5
    iget-object v0, v0, LA5/g;->c:Ljava/lang/reflect/Method;

    .line 118
    .line 119
    if-eqz v0, :cond_6

    .line 120
    .line 121
    new-array v1, v2, [Ljava/lang/Object;

    .line 122
    .line 123
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    move-object p1, v3

    .line 129
    :goto_3
    instance-of v0, p1, Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    move-object v3, p1

    .line 134
    check-cast v3, Ljava/lang/String;

    .line 135
    .line 136
    :cond_7
    return-object v3
.end method
