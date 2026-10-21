.class public interface abstract Lr2/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr2/M;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr2/K;

    .line 2
    .line 3
    invoke-direct {v0}, Lr2/K;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lr2/K;->build()Lr2/M;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lr2/J;->a:Lr2/M;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
