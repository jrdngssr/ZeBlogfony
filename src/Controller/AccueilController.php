<?php

namespace App\Controller;

use App\Entity\Articles;
use App\Repository\ArticlesRepository;
use App\Entity\Commentaires;
use App\Repository\CommentairesRepository;
use App\Form\CommentairesType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;


class AccueilController extends AbstractController
{
    /**
     * @Route("/", name="accueil")
     */
    public function index()
    {
        // Méthode findBy qui permet de récupérer les données avec des critères de filtre et de tri
        $posts = $this->getDoctrine()->getRepository(Articles::class)->findBy([],['datecreate' => 'desc']);
        $comments = $this->getDoctrine()->getRepository(Commentaires::class)->findBy([],['datecreate' => 'desc']);

        return $this->render('accueil/index.html.twig', [
            'posts' => $posts,
            'comments' => $comments,
        ]);
    }
}
