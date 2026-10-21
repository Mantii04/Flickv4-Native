.class public abstract Lkotlin/jvm/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/jvm/internal/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lkotlin/jvm/internal/m;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    move-object v0, v1

    .line 15
    :catch_0
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/m;

    .line 19
    .line 20
    invoke-direct {v0}, Lkotlin/jvm/internal/m;-><init>()V

    .line 21
    .line 22
    .line 23
    :goto_0
    sput-object v0, Lkotlin/jvm/internal/l;->a:Lkotlin/jvm/internal/m;

    .line 24
    .line 25
    return-void
.end method

.method public static function(Lkotlin/jvm/internal/FunctionReference;)LN5/e;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/l;->a:Lkotlin/jvm/internal/m;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/m;->function(Lkotlin/jvm/internal/FunctionReference;)LN5/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getOrCreateKotlinClass(Ljava/lang/Class;)LN5/c;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/l;->a:Lkotlin/jvm/internal/m;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/m;->getOrCreateKotlinClass(Ljava/lang/Class;)LN5/c;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getOrCreateKotlinPackage(Ljava/lang/Class;)LN5/d;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/jvm/internal/l;->a:Lkotlin/jvm/internal/m;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lkotlin/jvm/internal/m;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)LN5/d;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static property0(Lkotlin/jvm/internal/PropertyReference0;)LN5/g;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/l;->a:Lkotlin/jvm/internal/m;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/m;->property0(Lkotlin/jvm/internal/PropertyReference0;)LN5/g;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static property1(Lkotlin/jvm/internal/PropertyReference1;)LN5/i;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/l;->a:Lkotlin/jvm/internal/m;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/m;->property1(Lkotlin/jvm/internal/PropertyReference1;)LN5/i;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static property2(Lkotlin/jvm/internal/PropertyReference2;)LN5/k;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/l;->a:Lkotlin/jvm/internal/m;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/m;->property2(Lkotlin/jvm/internal/PropertyReference2;)LN5/k;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/l;->a:Lkotlin/jvm/internal/m;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/m;->renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static renderLambdaToString(Lkotlin/jvm/internal/h;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lkotlin/jvm/internal/l;->a:Lkotlin/jvm/internal/m;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/m;->renderLambdaToString(Lkotlin/jvm/internal/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
