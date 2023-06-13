public class BulletProjectile : Monobehaviour{
    private Rigidbody bulletRigidBody;

    private void Awake()
    {
        bulletRigidBody = Get <Rigidbody>();
    }

    private void Start()
    {
        float speed = 10f;
        bulletRigidBody.velocity = transform.forward * speed;
    }

    private void OnTriggerEnter (Collider other)
    {
        Destroy(gameObject
    }
}