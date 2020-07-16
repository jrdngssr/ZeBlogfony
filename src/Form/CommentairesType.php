<?php

namespace App\Form;

use App\Entity\User;
use App\Entity\Articles;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use App\Entity\Commentaires;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class CommentairesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('contenu')
            ->add('datecreate',DateTimeType::class, [
                'time_label' => 'Starts On',
            ])
            ->add('updatedate',DateTimeType::class, [
                'time_label' => 'Starts On',
            ])
            ->add('username')
            ->add('user', EntityType::class , [
                'class' => User::class ,
                'choice_label' => 'id'
            ])
            ->add('articles', EntityType::class , [
                'class' => Articles::class ,
                'choice_label' => 'id'
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Commentaires::class,
        ]);
    }
}
