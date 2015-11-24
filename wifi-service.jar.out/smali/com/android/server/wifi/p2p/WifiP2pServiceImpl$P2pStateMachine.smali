.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pPersistentAutoConnect;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private isCmdUpdateChannelListDefered:Z

.field private mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

.field private mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

.field private mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

.field private mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

.field private final mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

.field private mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

.field private mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

.field private mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

.field private mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

.field private mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

.field private mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

.field private mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

.field private mP2pPersistentAutoConnect:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pPersistentAutoConnect;

.field private final mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private final mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

.field private mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

.field private mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

.field private mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "p2pSupported"    # Z

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .line 760
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 696
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    .line 697
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    .line 698
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    .line 699
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    .line 700
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    .line 701
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    .line 703
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    .line 704
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    .line 705
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    .line 707
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    .line 709
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    .line 710
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    .line 712
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pPersistentAutoConnect;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pPersistentAutoConnect;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pPersistentAutoConnect:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pPersistentAutoConnect;

    .line 714
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    .line 716
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    .line 717
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    .line 718
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    .line 720
    new-instance v0, Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 721
    new-instance v0, Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Lcom/android/server/wifi/WifiNative;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 723
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 732
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 733
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroupList;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$1;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 743
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 749
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 762
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 763
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 764
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 765
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 766
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 767
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 768
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 769
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 770
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 771
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 772
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 773
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 775
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pPersistentAutoConnect:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pPersistentAutoConnect;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 777
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 778
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 779
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 780
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 782
    if-eqz p4, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 787
    :goto_0
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setLogRecSize(I)V

    .line 788
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setLogOnlyTransitions(Z)V

    .line 789
    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$10000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationReceived()V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->startDhcpServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    return-object v0
.end method

.method static synthetic access$12100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 694
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeClientFromList(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pOverlapDetectedBroadcast()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V

    return-void
.end method

.method static synthetic access$13100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$13200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getPersistentAutoConnectNetId(Landroid/net/wifi/p2p/WifiP2pConfig;)I

    move-result v0

    return v0
.end method

.method static synthetic access$13300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$14000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateThisDevice(I)V

    return-void
.end method

.method static synthetic access$14500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$14600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$14800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->handleGroupRemoved()V

    return-void
.end method

.method static synthetic access$15100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$15600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyP2pDisconnect(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$16200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    return-object v0
.end method

.method static synthetic access$16300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->resetWifiP2pInfo()V

    return-void
.end method

.method static synthetic access$16500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 694
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 694
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->initializeP2pSettings()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isCmdUpdateChannelListDefered:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 694
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isCmdUpdateChannelListDefered:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setAndPersistDeviceName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearSupplicantServiceRequest()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->startWifiScan()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object p1
.end method

.method static synthetic access$7000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyDisconnectWifiConnection(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setTheBestChannel()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyP2pProvDiscShowPinRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pPersistentAutoConnect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pPersistentAutoConnect:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pPersistentAutoConnect;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->cleanUpP2pNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->handleGroupCreationFailure()V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 4
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4401
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientDeadChannels()V

    .line 4402
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 4403
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 4416
    :cond_0
    :goto_0
    return v1

    .line 4407
    :cond_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4411
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, p2}, Lcom/android/server/wifi/WifiNative;->p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4412
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 4416
    goto :goto_0
.end method

.method private addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "stringId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 3415
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 3416
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900ef

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3418
    .local v1, "row":Landroid/view/View;
    const v2, 0x10203d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3419
    const v2, 0x1020317

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3420
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3421
    return-void
.end method

.method private addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 4
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    const/4 v1, 0x1

    .line 4325
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientDeadChannels()V

    .line 4326
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 4327
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 4328
    const/4 v1, 0x0

    .line 4341
    :cond_0
    :goto_0
    return v1

    .line 4331
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # ++operator for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17304(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    .line 4333
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # ++operator for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17304(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    .line 4334
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    move-result v2

    invoke-virtual {p2, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->setTransactionId(I)V

    .line 4335
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4337
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4341
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    move-result v1

    goto :goto_0
.end method

.method private cleanUpP2pNetwork(Ljava/lang/String;)V
    .locals 10
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 3245
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v5

    .line 3247
    .local v5, "listStr":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v8, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 3248
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 3249
    .local v1, "deviceName":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    if-nez v1, :cond_2

    .line 3276
    :cond_0
    :goto_1
    return-void

    .line 3248
    .end local v1    # "deviceName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3251
    .restart local v1    # "deviceName":Ljava/lang/String;
    :cond_2
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3252
    .local v4, "lines":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3255
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    array-length v8, v4

    if-ge v3, v8, :cond_0

    .line 3256
    aget-object v8, v4, v3

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3257
    .local v7, "result":[Ljava/lang/String;
    if-eqz v7, :cond_3

    array-length v8, v7

    const/4 v9, 0x4

    if-ge v8, v9, :cond_4

    .line 3255
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3261
    :cond_4
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    aget-object v8, v7, v8

    const-string v9, "any"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3263
    const/4 v6, -0x1

    .line 3264
    .local v6, "netId":I
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3265
    if-ltz v6, :cond_3

    .line 3266
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clean up P2p Network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3267
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8, v6}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3270
    :catch_0
    move-exception v2

    .line 3271
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3
.end method

.method private clearClientDeadChannels()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 4489
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4491
    .local v1, "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Messenger;>;"
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .line 4492
    .local v0, "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 4493
    .local v5, "msg":Landroid/os/Message;
    const v6, 0x22031

    iput v6, v5, Landroid/os/Message;->what:I

    .line 4494
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 4495
    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 4496
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4498
    :try_start_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4499
    :catch_0
    move-exception v2

    .line 4500
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "detect dead channel"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4501
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4505
    .end local v0    # "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .line 4506
    .local v4, "m":Landroid/os/Messenger;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    goto :goto_1

    .line 4508
    .end local v4    # "m":Landroid/os/Messenger;
    :cond_1
    return-void
.end method

.method private clearClientInfo(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 4452
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    .line 4453
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    .line 4454
    return-void
.end method

.method private clearLocalServices(Landroid/os/Messenger;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 4435
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 4436
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 4449
    :cond_0
    :goto_0
    return-void

    .line 4440
    :cond_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 4441
    .local v2, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    goto :goto_1

    .line 4444
    .end local v2    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :cond_2
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 4445
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 4446
    const-string v3, "remove client information from framework"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4447
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v3

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private clearServiceRequests(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 4377
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 4378
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 4398
    :cond_0
    :goto_0
    return-void

    .line 4382
    :cond_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4386
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 4388
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 4389
    const-string v1, "remove channel information from framework"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4390
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4393
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4397
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    goto :goto_0
.end method

.method private clearSupplicantServiceRequest()V
    .locals 2

    .prologue
    .line 4315
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4319
    :goto_0
    return-void

    .line 4317
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->p2pServDiscCancelReq(Ljava/lang/String;)Z

    .line 4318
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 3705
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->getGroupCapability(Ljava/lang/String;)I

    move-result v0

    .line 3706
    .local v0, "gc":I
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateGroupCapability(Ljava/lang/String;I)V

    .line 3707
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    return-object v1
.end method

.method private getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "createIfNotExist"    # Z

    .prologue
    .line 4518
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .line 4520
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4521
    const-string v1, "add a new client"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4522
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .end local v0    # "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Messenger;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;)V

    .line 4523
    .restart local v0    # "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4526
    :cond_0
    return-object v0
.end method

.method private getClientList(I)[Ljava/lang/String;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 3833
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "p2p_client_list"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3834
    .local v0, "p2pClients":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3835
    const/4 v1, 0x0

    .line 3837
    :goto_0
    return-object v1

    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDeviceAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 3980
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 3981
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 3982
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 3985
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 3966
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 3967
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 3968
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 3969
    .local v1, "deviceName":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3975
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local p1    # "deviceAddress":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 3972
    .restart local v1    # "deviceName":Ljava/lang/String;
    .restart local p1    # "deviceAddress":Ljava/lang/String;
    :cond_1
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNetworkIdFromClientList(Ljava/lang/String;)I
    .locals 11
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 3811
    if-nez p1, :cond_1

    move v7, v9

    .line 3824
    :cond_0
    :goto_0
    return v7

    .line 3813
    :cond_1
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v3

    .line 3814
    .local v3, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 3815
    .local v2, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v7

    .line 3816
    .local v7, "netId":I
    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientList(I)[Ljava/lang/String;

    move-result-object v8

    .line 3817
    .local v8, "p2pClientList":[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 3818
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 3819
    .local v1, "client":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3818
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "client":Ljava/lang/String;
    .end local v2    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "netId":I
    .end local v8    # "p2pClientList":[Ljava/lang/String;
    :cond_3
    move v7, v9

    .line 3824
    goto :goto_0
.end method

.method private getPersistedDeviceName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 3990
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_p2p_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3992
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3995
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3998
    .local v1, "id":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4005
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 4001
    .restart local v0    # "deviceName":Ljava/lang/String;
    .restart local v1    # "id":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPersistentAutoConnectNetId(Landroid/net/wifi/p2p/WifiP2pConfig;)I
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 3211
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiNative;->p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3212
    .local v0, "currSSID":Ljava/lang/String;
    const/4 v2, -0x1

    .line 3213
    .local v2, "netId":I
    if-eqz v0, :cond_0

    .line 3214
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3216
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pListFromWifiScan:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 3217
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pListFromWifiScan:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 3218
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3219
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3224
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    return v2
.end method

.method private getPersistentNetworkName(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 5
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 3229
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3230
    .local v0, "currSSID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3231
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pListFromWifiScan:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3232
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pListFromWifiScan:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 3233
    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3234
    iget-object v0, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 3235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found Network Name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3241
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    return-object v0
.end method

.method private handleGroupCreationFailure()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4151
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->resetWifiP2pInfo()V

    .line 4152
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 4153
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    .line 4156
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    .line 4159
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    move-result v0

    .line 4162
    .local v0, "peersChanged":Z
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4163
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4164
    const/4 v0, 0x1

    .line 4168
    :cond_0
    if-eqz v0, :cond_1

    .line 4169
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V

    .line 4172
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 4173
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4175
    const v1, 0x22001

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 4177
    return-void
.end method

.method private handleGroupRemoved()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 4181
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v1

    .line 4182
    .local v1, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    const/4 v4, 0x0

    .line 4183
    .local v4, "peersChanged":Z
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 4184
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v5, v8, :cond_0

    .line 4186
    :cond_1
    iput v8, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 4187
    const/4 v4, 0x1

    goto :goto_0

    .line 4192
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4193
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->stopDhcpServer(Ljava/lang/String;)V

    .line 4207
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4211
    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 4215
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 4220
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 4221
    .restart local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    .line 4195
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4
    const-string v5, "stop DHCP client"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4196
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    const v6, 0x30002

    invoke-virtual {v5, v6}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4197
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/DhcpStateMachine;->doQuit()V

    .line 4198
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 4200
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4201
    :catch_0
    move-exception v2

    .line 4202
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove iface from local network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4208
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 4209
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to clear addresses "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4223
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x1

    .line 4224
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x1

    .line 4225
    :cond_7
    if-eqz v4, :cond_8

    .line 4226
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V

    .line 4229
    :cond_8
    iput-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 4230
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 4231
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v5, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4233
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$14200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4234
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    const v6, 0x2300c

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 4235
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$14202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4237
    :cond_9
    return-void
.end method

.method private initializeP2pSettings()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4047
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v7, v5}, Lcom/android/server/wifi/WifiNative;->setPersistentReconnect(Z)Z

    .line 4048
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getPersistedDeviceName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 4049
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    .line 4051
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 4052
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    .line 4055
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "virtual_push_button physical_display keypad"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    .line 4057
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "sta"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiNative;->setConcurrencyPriority(Ljava/lang/String;)Z

    .line 4059
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->p2pGetDeviceAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 4060
    invoke-direct {p0, v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateThisDevice(I)V

    .line 4061
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeviceAddress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4063
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 4064
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    .line 4065
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->p2pServiceFlush()Z

    .line 4066
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v7, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;B)B

    .line 4067
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4069
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_country_code"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4071
    .local v1, "countryCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 4072
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v7

    const v8, 0x23010

    invoke-virtual {v7, v8, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 4076
    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->getMccMode()I

    move-result v7

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5102(I)I

    .line 4077
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5100()I

    move-result v7

    if-eq v7, v5, :cond_1

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5102(I)I

    .line 4078
    :cond_1
    const-string v7, "WifiP2pService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MCC mode enabled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5100()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5100()I

    move-result v8

    if-ne v8, v5, :cond_3

    :goto_0
    iput-boolean v5, v7, Landroid/net/wifi/p2p/WifiP2pInfo;->mccMode:Z

    .line 4081
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5100()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiNative;->setP2pConcurrentOper(I)Z

    .line 4083
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_p2p_configuration"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4085
    .local v2, "deviceConf":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 4086
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4089
    .local v0, "confToken":[Ljava/lang/String;
    const/4 v5, 0x2

    :try_start_0
    aget-object v5, v0, v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    aget-object v5, v0, v5

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4090
    const-string v5, "-1"

    const-string v6, "900"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 4091
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_p2p_configuration"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4095
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    .line 4096
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    .line 4097
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    .line 4098
    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pAutoConnectSupport:I
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5502(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4113
    .end local v0    # "confToken":[Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiNative;->setMaxNumberStation(I)Z

    .line 4114
    const-string v5, "WifiP2pService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mP2pAutoConnectSupport = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pAutoConnectSupport:I
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5500()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4116
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17000()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V

    .line 4117
    return-void

    .end local v2    # "deviceConf":Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 4079
    goto/16 :goto_0

    .line 4100
    .restart local v0    # "confToken":[Ljava/lang/String;
    .restart local v2    # "deviceConf":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 4101
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "WifiP2pService"

    const-string v6, "Load default P2P configuration"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4107
    .end local v0    # "confToken":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4110
    .local v3, "deviceConfig":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_p2p_configuration"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 4099
    .end local v3    # "deviceConfig":Ljava/lang/String;
    .restart local v0    # "confToken":[Ljava/lang/String;
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method

.method private isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v0, 0x1

    .line 3693
    if-nez p1, :cond_1

    .line 3696
    :cond_0
    :goto_0
    return v0

    .line 3694
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3695
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3696
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDisconnectWifiConnection(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3885
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3886
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040710

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104070e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10404c6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$11;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$11;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10404c7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$10;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$10;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$9;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$9;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3908
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3909
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3910
    return-void
.end method

.method private notifyInvitationReceived()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3492
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 3493
    .local v3, "r":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v6, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 3494
    .local v6, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x10900ee

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 3497
    .local v4, "textEntryView":Landroid/view/View;
    const v7, 0x102034a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3498
    .local v1, "group":Landroid/view/ViewGroup;
    const v7, 0x10404ca

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v7, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3501
    const v7, 0x10203d4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3503
    .local v2, "pin":Landroid/widget/EditText;
    new-instance v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;

    invoke-direct {v5, p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/WpsInfo;)V

    .line 3519
    .local v5, "tw":Landroid/text/TextWatcher;
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3522
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x10404c9

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x10404c6

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;

    invoke-direct {v9, p0, v6, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$7;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x10404c7

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$6;

    invoke-direct {v9, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$6;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$5;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$5;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3562
    .local v0, "dialog":Landroid/app/AlertDialog;
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5100()I

    move-result v7

    if-nez v7, :cond_0

    .line 3563
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->getWiFiConnectedState()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3564
    const v7, 0x104070e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3569
    :cond_0
    iget v7, v6, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v7, :pswitch_data_0

    .line 3582
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 3585
    new-instance v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$8;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$8;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3602
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 3603
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3606
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->okButton:Landroid/widget/Button;
    invoke-static {v7, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$16902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/widget/Button;)Landroid/widget/Button;

    .line 3607
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->okButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$16900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v7, v6, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 3608
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->okButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$16900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3611
    :cond_2
    return-void

    .line 3571
    :pswitch_0
    const-string v7, "Enter pin section visible"

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3572
    const v7, 0x10203d3

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3575
    :pswitch_1
    const-string v7, "Shown pin section visible"

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3576
    const v7, 0x10404cd

    iget-object v8, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-direct {p0, v1, v7, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_0

    .line 3569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "peerAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 3424
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 3426
    .local v2, "r":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x10900ee

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3429
    .local v3, "textEntryView":Landroid/view/View;
    const v4, 0x102034a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3430
    .local v1, "group":Landroid/view/ViewGroup;
    const v4, 0x10404cb

    invoke-direct {p0, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3431
    const v4, 0x10404cd

    invoke-direct {p0, v1, v4, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3433
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x10404c8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3438
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 3439
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3440
    return-void
.end method

.method private notifyP2pDisconnect(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3915
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3916
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040710

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040711

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10404c6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$14;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$14;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10404c7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$13;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$13;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$12;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$12;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3944
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3945
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3946
    return-void
.end method

.method private notifyP2pEnableFailure()V
    .locals 5

    .prologue
    .line 3404
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3405
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x10404c1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10404c3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3410
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3411
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3412
    return-void
.end method

.method private notifyP2pProvDiscShowPinRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "peerAddress"    # Ljava/lang/String;

    .prologue
    .line 3443
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 3444
    .local v2, "r":Landroid/content/res/Resources;
    move-object v3, p2

    .line 3445
    .local v3, "tempDevAddress":Ljava/lang/String;
    move-object v4, p1

    .line 3447
    .local v4, "tempPin":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900ee

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 3450
    .local v5, "textEntryView":Landroid/view/View;
    const v6, 0x102034a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3451
    .local v1, "group":Landroid/view/ViewGroup;
    const v6, 0x10404cb

    invoke-direct {p0, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v6, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3452
    const v6, 0x10404cd

    invoke-direct {p0, v1, v6, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3454
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x10404c8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x10404c6

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$3;

    invoke-direct {v8, p0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$3;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x10404c7

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;

    invoke-direct {v8, p0, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3481
    .local v0, "dialog":Landroid/app/AlertDialog;
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsMccModeEnabled:I
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5100()I

    move-result v6

    if-nez v6, :cond_0

    .line 3482
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->getWiFiConnectedState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3483
    const v6, 0x104070e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3487
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 3488
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3489
    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 4267
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4268
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 4269
    return-object v0
.end method

.method private p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 3715
    const/4 v1, 0x0

    .line 3716
    .local v1, "join":Z
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 3718
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsInvite:Z
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3719
    const/4 v1, 0x1

    .line 3725
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    move-result-object v2

    .line 3727
    .local v2, "pin":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3728
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3732
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsInvite:Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 3733
    return-void

    .line 3722
    .end local v2    # "pin":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v1

    goto :goto_0

    .line 3729
    .restart local v2    # "pin":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3742
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 3744
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v1

    .line 3745
    .local v1, "join":Z
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3746
    .local v3, "ssid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target ssid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " join:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3748
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupLimit()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3749
    const-string v6, "target device reaches group limit."

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3753
    const/4 v1, 0x0

    .line 3766
    :cond_0
    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isDeviceLimit()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3767
    const-string v5, "target device reaches the device limit."

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 3798
    :cond_1
    :goto_0
    return v4

    .line 3754
    :cond_2
    if-eqz v1, :cond_0

    .line 3755
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3756
    .local v2, "netId":I
    if-ltz v2, :cond_0

    .line 3758
    iput v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 3759
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6, v2}, Lcom/android/server/wifi/WifiNative;->p2pGroupAdd(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 3762
    goto :goto_0

    .line 3771
    .end local v2    # "netId":I
    :cond_3
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationCapable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3772
    const/4 v2, -0x2

    .line 3773
    .restart local v2    # "netId":I
    iget v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    if-ltz v6, :cond_6

    .line 3774
    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget v8, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getOwnerAddr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3775
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 3780
    :cond_4
    :goto_1
    if-gez v2, :cond_5

    .line 3781
    iget-object v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getNetworkIdFromClientList(Ljava/lang/String;)I

    move-result v2

    .line 3783
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netId related with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3784
    if-ltz v2, :cond_1

    .line 3786
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/wifi/WifiNative;->p2pReinvoke(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3788
    iput v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    move v4, v5

    .line 3789
    goto :goto_0

    .line 3778
    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 3791
    :cond_7
    const-string v5, "p2pReinvoke() failed, update networks"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 3792
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17000()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V

    goto/16 :goto_0
.end method

.method private removeClientFromList(ILjava/lang/String;Z)Z
    .locals 11
    .param p1, "netId"    # I
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "isRemovable"    # Z

    .prologue
    const/4 v7, 0x1

    .line 3848
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3849
    .local v6, "modifiedClientList":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientList(I)[Ljava/lang/String;

    move-result-object v2

    .line 3850
    .local v2, "currentClientList":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 3851
    .local v4, "isClientRemoved":Z
    if-eqz v2, :cond_1

    .line 3852
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 3853
    .local v1, "client":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3854
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3855
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3852
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3857
    :cond_0
    const/4 v4, 0x1

    goto :goto_1

    .line 3861
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "client":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_2

    if-eqz p3, :cond_2

    .line 3863
    const-string v8, "Remove unknown network"

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3864
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v8, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    .line 3880
    :goto_2
    return v7

    .line 3868
    :cond_2
    if-nez v4, :cond_3

    .line 3870
    const/4 v7, 0x0

    goto :goto_2

    .line 3873
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Modified client list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3874
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 3875
    const-string v8, "\"\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3877
    :cond_4
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v9, "p2p_client_list"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, p1, v9, v10}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 3879
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto :goto_2
.end method

.method private removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 4420
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 4421
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 4432
    :cond_0
    :goto_0
    return-void

    .line 4425
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    .line 4427
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4428
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 4429
    const-string v1, "remove client information from framework"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4430
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 4345
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 4346
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 4373
    :cond_0
    :goto_0
    return-void

    .line 4352
    :cond_1
    const/4 v2, 0x0

    .line 4353
    .local v2, "removed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 4354
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4355
    const/4 v2, 0x1

    .line 4356
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4361
    :cond_2
    if-eqz v2, :cond_0

    .line 4363
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_3

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 4364
    const-string v3, "remove client information from framework"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4365
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v3

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4368
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4372
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    goto :goto_0

    .line 4353
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 4242
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 4246
    :goto_0
    return-void

    .line 4243
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 4244
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 4245
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 4249
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 4254
    :goto_0
    return-void

    .line 4250
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 4251
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 4252
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 4253
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4257
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 4262
    :goto_0
    return-void

    .line 4258
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 4259
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 4260
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4261
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetWifiP2pInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3958
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 3959
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 3960
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 3961
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->operatingChannel:I

    .line 3962
    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pConnectedState:Z
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17102(Z)Z

    .line 3963
    return-void
.end method

.method private sendP2pConnectionChangedBroadcast()V
    .locals 5

    .prologue
    .line 3331
    const-string v1, "sending p2p connection changed broadcast"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3332
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3333
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3335
    const-string v1, "wifiP2pInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3336
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3337
    const-string v1, "p2pGroupInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3338
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3339
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2300b

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 3341
    return-void
.end method

.method private sendP2pDiscoveryChangedBroadcast(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 3303
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 3314
    :goto_0
    return-void

    .line 3304
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z
    invoke-static {v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 3306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discovery change broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3309
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3310
    const-string v2, "discoveryState"

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3313
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 3310
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private sendP2pOverlapDetectedBroadcast()V
    .locals 3

    .prologue
    .line 3352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.OVERLAP_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3353
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3354
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3355
    return-void
.end method

.method private sendP2pPersistentGroupsChangedBroadcast()V
    .locals 3

    .prologue
    .line 3344
    const-string v1, "sending p2p persistent groups changed broadcast"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3346
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3347
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3348
    return-void
.end method

.method private sendP2pStateChangedBroadcast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 3290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3291
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3292
    if-eqz p1, :cond_0

    .line 3293
    const-string v1, "wifi_p2p_state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3299
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3300
    return-void

    .line 3296
    :cond_0
    const-string v1, "wifi_p2p_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendPeersChangedBroadcast()V
    .locals 4

    .prologue
    .line 3324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3325
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wifiP2pDeviceList"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3326
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3327
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3328
    return-void
.end method

.method private sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 8
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .prologue
    const/4 v7, 0x0

    .line 4462
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .line 4463
    .local v0, "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getTransactionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 4464
    .local v4, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v4, :cond_0

    .line 4465
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 4466
    .local v3, "msg":Landroid/os/Message;
    const v5, 0x22032

    iput v5, v3, Landroid/os/Message;->what:I

    .line 4467
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 4468
    iput v7, v3, Landroid/os/Message;->arg2:I

    .line 4469
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4471
    :try_start_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4472
    :catch_0
    move-exception v1

    .line 4473
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "detect dead channel"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4474
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    .line 4479
    .end local v0    # "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_1
    return-void
.end method

.method private sendThisDeviceChangedBroadcast()V
    .locals 4

    .prologue
    .line 3317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3318
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3319
    const-string v1, "wifiP2pDevice"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3320
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3321
    return-void
.end method

.method private setAndPersistDeviceName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "devName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4009
    if-nez p1, :cond_0

    .line 4022
    :goto_0
    return v0

    .line 4011
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4016
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 4017
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 4019
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_p2p_device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4021
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 4022
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setTheBestChannel()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 4121
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mSupportedBand:I
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6400()I

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mSupportedBand:I
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6400()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 4124
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4127
    .local v0, "countryCode":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 4128
    const-string v0, "US"

    .line 4130
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 4131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Country Code detected ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4133
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mSupportedBand:I
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6400()I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    :goto_0
    sget v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestChannel:I

    sget v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestUpperChannel:I

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/android/server/wifi/WifiNative;->p2pSetBestChannel(IIILjava/lang/String;)Z

    .line 4142
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 4133
    .restart local v0    # "countryCode":Ljava/lang/String;
    :cond_3
    sget v1, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto :goto_0

    .line 4137
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_4
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mSupportedBand:I
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6400()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 4139
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    sget v2, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->p2pSetBestChannelTwoFour(I)Z

    .line 4140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setTheBestChannel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    .locals 5
    .param p1, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4028
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4029
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiNative;->setWfdEnable(Z)Z

    move-result v0

    .line 4036
    .local v0, "success":Z
    :goto_0
    if-nez v0, :cond_2

    .line 4037
    const-string v1, "Failed to set wfd properties"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 4043
    :goto_1
    return v2

    .line 4031
    .end local v0    # "success":Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiNative;->setWfdEnable(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceInfoHex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->setWfdDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .restart local v0    # "success":Z
    :goto_2
    goto :goto_0

    .end local v0    # "success":Z
    :cond_1
    move v0, v2

    goto :goto_2

    .line 4041
    .restart local v0    # "success":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iput-object p1, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 4042
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    move v2, v1

    .line 4043
    goto :goto_1
.end method

.method private setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "serverInetAddress"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x1

    .line 3950
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 3951
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 3952
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 3953
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOperatingChannel()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->operatingChannel:I

    .line 3954
    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pConnectedState:Z
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17102(Z)Z

    .line 3955
    return-void
.end method

.method private startDhcpServer(Ljava/lang/String;)V
    .locals 7
    .param p1, "intf"    # Ljava/lang/String;

    .prologue
    .line 3359
    const/4 v2, 0x0

    .line 3361
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 3362
    new-instance v4, Landroid/net/LinkAddress;

    const-string v5, "192.168.49.1"

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 3364
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 3365
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 3367
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3369
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v3

    .line 3370
    .local v3, "tetheringDhcpRanges":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->isTetheringStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3371
    const-string v4, "Stop existing tethering and restart it"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3372
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 3374
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V

    .line 3375
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Started Dhcp server on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3382
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "tetheringDhcpRanges":[Ljava/lang/String;
    :goto_0
    return-void

    .line 3376
    :catch_0
    move-exception v1

    .line 3377
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error configuring interface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startWifiScan()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3282
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "customized_scan_settings"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3283
    const-string v1, "customized_scan_worksource"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3284
    const-string v1, "scan_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3285
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x20047

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3286
    return-void
.end method

.method private stopDhcpServer(Ljava/lang/String;)V
    .locals 7
    .param p1, "intf"    # Ljava/lang/String;

    .prologue
    .line 3386
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V

    .line 3387
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 3388
    .local v4, "temp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List all interfaces "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3389
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 3390
    const-string v5, "Found other tethering interfaces, so keep tethering alive"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3399
    const-string v5, "Stopped Dhcp server"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3401
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "temp":Ljava/lang/String;
    :goto_1
    return-void

    .line 3387
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "temp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3394
    .end local v4    # "temp":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3399
    const-string v5, "Stopped Dhcp server"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 3395
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catch_0
    move-exception v1

    .line 3396
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error stopping Dhcp server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3399
    const-string v5, "Stopped Dhcp server"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    const-string v6, "Stopped Dhcp server"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    throw v5
.end method

.method private updatePersistentNetworks(Z)V
    .locals 15
    .param p1, "reload"    # Z

    .prologue
    .line 3618
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v8

    .line 3619
    .local v8, "listStr":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 3685
    :cond_0
    :goto_0
    return-void

    .line 3621
    :cond_1
    const/4 v6, 0x0

    .line 3622
    .local v6, "isSaveRequired":Z
    const-string v13, "\n"

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3623
    .local v7, "lines":[Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 3625
    if-eqz p1, :cond_2

    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13}, Landroid/net/wifi/p2p/WifiP2pGroupList;->clear()Z

    .line 3628
    :cond_2
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    array-length v13, v7

    if-ge v5, v13, :cond_8

    .line 3629
    aget-object v13, v7, v5

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3630
    .local v11, "result":[Ljava/lang/String;
    if-eqz v11, :cond_3

    array-length v13, v11

    const/4 v14, 0x4

    if-ge v13, v14, :cond_4

    .line 3628
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3634
    :cond_4
    const/4 v10, -0x1

    .line 3635
    .local v10, "netId":I
    const/4 v13, 0x1

    aget-object v12, v11, v13

    .line 3636
    .local v12, "ssid":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v0, v11, v13

    .line 3637
    .local v0, "bssid":Ljava/lang/String;
    const/4 v13, 0x3

    aget-object v3, v11, v13

    .line 3639
    .local v3, "flags":Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_0
    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 3645
    const-string v13, "[CURRENT]"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 3648
    const-string v13, "[P2P-PERSISTENT]"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 3653
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "clean up the unused persistent group. netId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3654
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v13, v10}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    .line 3655
    const/4 v6, 0x1

    .line 3656
    goto :goto_2

    .line 3640
    :catch_0
    move-exception v2

    .line 3641
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 3659
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13, v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->contains(I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 3663
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 3664
    .local v4, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v4, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 3665
    invoke-virtual {v4, v12}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    .line 3666
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v14, "mode"

    invoke-virtual {v13, v10, v14}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3667
    .local v9, "mode":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v13, "3"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3668
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 3670
    :cond_6
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v13

    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3671
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 3677
    :goto_3
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13, v4}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 3678
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 3673
    :cond_7
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 3674
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 3675
    invoke-virtual {v4, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_3

    .line 3681
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3    # "flags":Ljava/lang/String;
    .end local v4    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "netId":I
    .end local v11    # "result":[Ljava/lang/String;
    .end local v12    # "ssid":Ljava/lang/String;
    :cond_8
    if-nez p1, :cond_9

    if-eqz v6, :cond_0

    .line 3682
    :cond_9
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 3683
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V

    goto/16 :goto_0
.end method

.method private updateSupplicantServiceRequest()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 4286
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearSupplicantServiceRequest()V

    .line 4288
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 4289
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .line 4292
    .local v0, "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 4293
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 4294
    .local v3, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v3, :cond_1

    .line 4295
    invoke-virtual {v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->getSupplicantQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4292
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4300
    .end local v0    # "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .end local v1    # "i":I
    .end local v3    # "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 4308
    :cond_3
    :goto_1
    return v5

    .line 4304
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "00:00:00:00:00:00"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/WifiNative;->p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4305
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4308
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private updateThisDevice(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 4146
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 4147
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 4148
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3201
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiP2pInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedPeerConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedP2pGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3207
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4274
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4279
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    return-void
.end method
