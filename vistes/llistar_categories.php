<ul>
     <?php foreach ($categories as $categoria): ?>
        <li>
        <h3><?php echo $categoria['nom'] ?> </h3>
        <p><?php echo $categoria['descripcio'] ?> </p>
        </li>
    <?php endforeach; ?>
 </ul>