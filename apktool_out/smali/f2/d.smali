.class public abstract Lf2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf2/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lf2/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf2/d;->a:Lf2/c;

    .line 7
    .line 8
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lf2/d;->a:Lf2/c;

    .line 2
    .line 3
    invoke-interface {v0, p0}, LT1/J;->debug(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lf2/d;->a:Lf2/c;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, LT1/J;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lf2/d;->a:Lf2/c;

    invoke-interface {v0, p0}, LT1/J;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lf2/d;->a:Lf2/c;

    invoke-interface {v0, p0, p1}, LT1/J;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
