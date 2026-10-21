.class public abstract LK/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LK/o;

.field public static final b:LK/o;

.field public static final c:LK/o;

.field public static final d:LK/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LK/o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, LK/o;-><init>(LK/m;Z)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LK/p;->a:LK/o;

    .line 9
    .line 10
    new-instance v0, LK/o;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v0, v1, v3}, LK/o;-><init>(LK/m;Z)V

    .line 14
    .line 15
    .line 16
    sput-object v0, LK/p;->b:LK/o;

    .line 17
    .line 18
    new-instance v0, LK/o;

    .line 19
    .line 20
    sget-object v1, LK/l;->a:LK/l;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, LK/o;-><init>(LK/m;Z)V

    .line 23
    .line 24
    .line 25
    sput-object v0, LK/p;->c:LK/o;

    .line 26
    .line 27
    new-instance v0, LK/o;

    .line 28
    .line 29
    invoke-direct {v0, v1, v3}, LK/o;-><init>(LK/m;Z)V

    .line 30
    .line 31
    .line 32
    sput-object v0, LK/p;->d:LK/o;

    .line 33
    .line 34
    new-instance v0, LK/o;

    .line 35
    .line 36
    sget-object v1, LK/k;->a:LK/k;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, LK/o;-><init>(LK/m;Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
