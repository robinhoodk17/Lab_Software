using System;
using UnityEngine;

print("hello world");

public class MoveRocketWithVelocity : Monobehaviour 
{
    [SerializeField] private Camera turretCamera;
    //Aqui pones el default layer
    [SerializeField] private LayerMask aimColliderLayerMask = new LayerMask();


    private void Update()
    {
        if(!firstUpdateHappened)
        {
            firstUpdateHappened = true;
            List<GameObject> thePlayers = GameObject.FindGameObjectsWithTag("PlayerAssign");
            foreach (GameObject currentPlayerChecked in thePlayers)
            {
                PlayerAssignClass playerAssign = currentPlayerChecked.GetComponent<PlayerAssignClass>();
                if(playerAssign.pilot == true)
                {
                    playerInput = currentPlayerChecked.GetComponent<PlayerInput>();
                    playerInput.currentActionMap = playerInput.actions.GetActionMap("pilotLeft");
                    currentPlayerChecked.setActive(false);
                }
            }
        }
    }

    private void LateUpdate()
    {
        if(shooting)
        {
            Vector2 screenCenterPoint = new Vector2(Screen.width/2f, Screen.height/2f);
            Ray ray = turretCamera.ScreenPointToRay(screenCenterPoint);
            if(Physics.Raycast(ray, out RaycastHit raycastHit, 999f, aimColliderLayerMask))
            {
                transfrom.position = raycastHit.point
            }
        }
    }
}